# The name of this view in Looker is "Devices"
view: devices {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.devices ;;
  drill_fields: [device_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: device_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.device_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "App V Major" in Explore.

  dimension: app_v_major {
    type: number
    sql: ${TABLE}.app_v_major ;;
  }

  dimension: app_v_minor {
    type: number
    sql: ${TABLE}.app_v_minor ;;
  }

  dimension: app_v_release {
    type: number
    sql: ${TABLE}.app_v_release ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }

  dimension: business_uuid {
    type: string
    sql: ${TABLE}.business_uuid ;;
  }

  dimension: cnt_events {
    type: number
    sql: ${TABLE}.cnt_events ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cnt_events {
    type: sum
    sql: ${cnt_events} ;;
  }

  measure: average_cnt_events {
    type: average
    sql: ${cnt_events} ;;
  }

  dimension: device_rank {
    type: number
    sql: ${TABLE}.device_rank ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: last_used {
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
    sql: ${TABLE}.last_used ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: os {
    type: string
    sql: ${TABLE}.os ;;
  }

  dimension: os_version {
    type: string
    sql: ${TABLE}.os_version ;;
  }

  dimension: pct_top_user {
    type: number
    sql: ${TABLE}.pct_top_user ;;
  }

  dimension: pct_usage_all {
    type: number
    sql: ${TABLE}.pct_usage_all ;;
  }

  dimension: pct_usage_pay {
    type: number
    sql: ${TABLE}.pct_usage_pay ;;
  }

  dimension: proxy_txn_uses {
    type: number
    sql: ${TABLE}.proxy_txn_uses ;;
  }

  dimension: top_user {
    type: string
    sql: ${TABLE}.top_user ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}.users ;;
  }

  measure: count {
    type: count
    drill_fields: [device_id, v_devices.count]
  }
}
