view: set_up_interaction {
  derived_table: {
    sql: with
        merchant_info as (
          select
            businesses_won.business_uuid
            , businesses_won.intended_product
            , businesses_won.won_datetime
            , min(
              case
                when user_sessions.created >= businesses_won.won_datetime
                  then user_sessions.created
              end
            )
            as first_login
          from
            mv.businesses_won
            left join core_public.users using (business_uuid)
            left join core_public.user_sessions on
              users.uuid = user_sessions.user_uuid
              and user_sessions.auth_type in (
                'linked_card_machine'
                , 'linked_account'
              )
          where
          -- currently limited to businesses won this month but you can drop this
            businesses_won.won_date >= '2022-02-01'
          group by
            businesses_won.won_datetime
            , businesses_won.business_uuid
            , businesses_won.intended_product
        )
      select
        business_uuid
        , merchant_info.intended_product
        , merchant_info.won_datetime
        , merchant_info.first_login
        , min(
          case
            when tasks.created_date >= merchant_info.won_datetime
            and tasks.created_date >= first_login
              then tasks.created_date
          end
        )
        as first_contact
        , count(
          case
            when tasks.created_date >= merchant_info.won_datetime
            and tasks.created_date >= first_login
              then tasks.uuid
          end
        )
        as interactions
      from
        merchant_info
        left join salesforce.accounts on
          merchant_info.business_uuid = accounts.business_uuid_c
        left join salesforce.tasks on
          tasks.account_id = accounts.id
      group by
        business_uuid
        , intended_product
        , won_datetime
        , first_login
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: business_uuid {
    type: string
    sql: ${TABLE}.business_uuid ;;
  }

  dimension: intended_product {
    type: string
    sql: ${TABLE}.intended_product ;;
  }

  dimension_group: won_datetime {
    type: time
    sql: ${TABLE}.won_datetime ;;
  }

  dimension_group: first_login {
    type: time
    sql: ${TABLE}.first_login ;;
  }

  dimension_group: first_contact {
    type: time
    sql: ${TABLE}.first_contact ;;
  }

  dimension: interactions {
    type: number
    sql: ${TABLE}.interactions ;;
  }

  set: detail {
    fields: [
      business_uuid,
      intended_product,
      won_datetime_time,
      first_login_time,
      first_contact_time,
      interactions
    ]
  }
}
