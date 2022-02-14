# The name of this view in Looker is "Zendesk Tickets"
view: zendesk_tickets {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.zendesk_tickets ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Assignee Email" in Explore.

  dimension: assignee_email {
    type: string
    sql: ${TABLE}.assignee_email ;;
  }

  dimension: assignee_id {
    type: number
    sql: ${TABLE}.assignee_id ;;
  }

  dimension: business_uuid {
    type: string
    sql: ${TABLE}.business_uuid ;;
  }

  dimension: call_type {
    type: string
    sql: ${TABLE}.call_type ;;
  }

  dimension: case_type {
    type: string
    sql: ${TABLE}.case_type ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: category_value {
    type: string
    sql: ${TABLE}.category_value ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: closed_by_merge {
    type: yesno
    sql: ${TABLE}.closed_by_merge ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: email_type {
    type: string
    sql: ${TABLE}.email_type ;;
  }

  dimension: from_address {
    type: string
    sql: ${TABLE}.from_address ;;
  }

  dimension: full_resolution_time_in_minutes__business {
    type: number
    sql: ${TABLE}.full_resolution_time_in_minutes__business ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_full_resolution_time_in_minutes__business {
    type: sum
    sql: ${full_resolution_time_in_minutes__business} ;;
  }

  measure: average_full_resolution_time_in_minutes__business {
    type: average
    sql: ${full_resolution_time_in_minutes__business} ;;
  }

  dimension: full_resolution_time_in_minutes__calendar {
    type: number
    sql: ${TABLE}.full_resolution_time_in_minutes__calendar ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: is_call {
    type: yesno
    sql: ${TABLE}.is_call ;;
  }

  dimension: life_cycle_stage {
    type: string
    sql: ${TABLE}.life_cycle_stage ;;
  }

  dimension: life_cycle_stage_rank {
    type: number
    sql: ${TABLE}.life_cycle_stage_rank ;;
  }

  dimension: organization_id {
    type: number
    sql: ${TABLE}.organization_id ;;
  }

  dimension: previous_ticket {
    type: number
    sql: ${TABLE}.previous_ticket ;;
  }

  dimension: proactive_tag {
    type: number
    sql: ${TABLE}.proactive_tag ;;
  }

  dimension_group: solved {
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
    sql: ${TABLE}.solved ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: status_updated {
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
    sql: ${TABLE}.status_updated ;;
  }

  dimension: subcategory {
    type: string
    sql: ${TABLE}.subcategory ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: to_address {
    type: string
    sql: ${TABLE}.to_address ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: user_uuid {
    type: string
    sql: ${TABLE}.user_uuid ;;
  }

  dimension: waiting_time_raw {
    type: string
    sql: ${TABLE}.waiting_time_raw ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
