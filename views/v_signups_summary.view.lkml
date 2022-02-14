# The name of this view in Looker is "V Signups Summary"
view: v_signups_summary {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_signups_summary ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Accepted Card" in Explore.

  dimension: accepted_card {
    type: yesno
    sql: ${TABLE}.accepted_card ;;
  }

  dimension: avg_total_monthly_revenue {
    type: number
    sql: ${TABLE}.avg_total_monthly_revenue ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_avg_total_monthly_revenue {
    type: sum
    sql: ${avg_total_monthly_revenue} ;;
  }

  measure: average_avg_total_monthly_revenue {
    type: average
    sql: ${avg_total_monthly_revenue} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: business_details_entered {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.business_details_entered ;;
  }

  dimension: business_role {
    type: string
    sql: ${TABLE}.business_role ;;
  }

  dimension: business_type {
    type: string
    sql: ${TABLE}.business_type ;;
  }

  dimension: business_uuid {
    type: string
    sql: ${TABLE}.business_uuid ;;
  }

  dimension_group: cancelled {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.cancelled_at ;;
  }

  dimension: card_machine_in_services {
    type: yesno
    sql: ${TABLE}.card_machine_in_services ;;
  }

  dimension: citizenship {
    type: string
    sql: ${TABLE}.citizenship ;;
  }

  dimension: completed {
    type: yesno
    sql: ${TABLE}.completed ;;
  }

  dimension_group: completed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.completed_at ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created ;;
  }

  dimension_group: deleted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: gift_vouchers_in_services {
    type: yesno
    sql: ${TABLE}.gift_vouchers_in_services ;;
  }

  dimension: go_readers {
    type: number
    sql: ${TABLE}.go_readers ;;
  }

  dimension: intended_product {
    type: string
    sql: ${TABLE}.intended_product ;;
  }

  dimension: is_first_completed_signup {
    type: yesno
    sql: ${TABLE}.is_first_completed_signup ;;
  }

  dimension: is_first_created_signup {
    type: yesno
    sql: ${TABLE}.is_first_created_signup ;;
  }

  dimension: is_last_completed_signup {
    type: yesno
    sql: ${TABLE}.is_last_completed_signup ;;
  }

  dimension: is_reader_registration {
    type: yesno
    sql: ${TABLE}.is_reader_registration ;;
  }

  dimension: is_retail_signup {
    type: yesno
    sql: ${TABLE}.is_retail_signup ;;
  }

  dimension: is_valid_referral {
    type: yesno
    sql: ${TABLE}.is_valid_referral ;;
  }

  dimension: is_valid_reseller {
    type: yesno
    sql: ${TABLE}.is_valid_reseller ;;
  }

  dimension: khumo_readers {
    type: number
    sql: ${TABLE}.khumo_readers ;;
  }

  dimension: lite_readers {
    type: number
    sql: ${TABLE}.lite_readers ;;
  }

  dimension: mcc_code {
    type: string
    sql: ${TABLE}.mcc_code ;;
  }

  dimension: mcc_description {
    type: string
    sql: ${TABLE}.mcc_description ;;
  }

  dimension: mcc_group {
    type: string
    sql: ${TABLE}.mcc_group ;;
  }

  dimension: mobile_number {
    type: string
    sql: ${TABLE}.mobile_number ;;
  }

  dimension: most_expensive_reader {
    type: string
    sql: ${TABLE}.most_expensive_reader ;;
  }

  dimension: neo_readers {
    type: number
    sql: ${TABLE}.neo_readers ;;
  }

  dimension: os {
    type: string
    sql: ${TABLE}.os ;;
  }

  dimension: owner_first_name {
    type: string
    sql: ${TABLE}.owner_first_name ;;
  }

  dimension: owner_last_name {
    type: string
    sql: ${TABLE}.owner_last_name ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.payment_method ;;
  }

  dimension: payment_request_in_services {
    type: yesno
    sql: ${TABLE}.payment_request_in_services ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: primary_service {
    type: string
    sql: ${TABLE}.primary_service ;;
  }

  dimension: pro_readers {
    type: number
    sql: ${TABLE}.pro_readers ;;
  }

  dimension: promo_code {
    type: string
    sql: ${TABLE}.promo_code ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}.province ;;
  }

  dimension: qr_in_services {
    type: yesno
    sql: ${TABLE}.qr_in_services ;;
  }

  dimension: reader_transferred_from {
    type: string
    sql: ${TABLE}.reader_transferred_from ;;
  }

  dimension: reader_type {
    type: string
    sql: ${TABLE}.reader_type ;;
  }

  dimension: referral_code {
    type: string
    sql: ${TABLE}.referral_code ;;
  }

  dimension: referrer_business {
    type: string
    sql: ${TABLE}.referrer_business ;;
  }

  dimension: reseller_code {
    type: string
    sql: ${TABLE}.reseller_code ;;
  }

  dimension: reseller_name {
    type: string
    sql: ${TABLE}.reseller_name ;;
  }

  dimension: reseller_type {
    type: string
    sql: ${TABLE}.reseller_type ;;
  }

  dimension: sale_location {
    type: string
    sql: ${TABLE}.sale_location ;;
  }

  dimension: sale_type {
    type: string
    sql: ${TABLE}.sale_type ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}.serial_number ;;
  }

  dimension: services {
    type: string
    sql: ${TABLE}.services ;;
  }

  dimension: signup_identifier {
    type: string
    sql: ${TABLE}.signup_identifier ;;
  }

  dimension: signup_profile {
    type: string
    sql: ${TABLE}.signup_profile ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: trading_city {
    type: string
    sql: ${TABLE}.trading_city ;;
  }

  dimension: trading_name {
    type: string
    sql: ${TABLE}.trading_name ;;
  }

  dimension: user_journey {
    type: string
    sql: ${TABLE}.user_journey ;;
  }

  dimension: user_uuid {
    type: string
    sql: ${TABLE}.user_uuid ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }

  dimension: website_in_services {
    type: yesno
    sql: ${TABLE}.website_in_services ;;
  }

  measure: count {
    type: count
    drill_fields: [trading_name, owner_first_name, owner_last_name, reseller_name]
  }
}
