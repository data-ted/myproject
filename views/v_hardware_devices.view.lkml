# The name of this view in Looker is "V Hardware Devices"
view: v_hardware_devices {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_hardware_devices ;;
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
  # This dimension will be called "App V Build" in Explore.

  dimension: app_v_build {
    type: string
    sql: ${TABLE}.app_v_build ;;
  }

  dimension: app_v_major {
    type: string
    sql: ${TABLE}.app_v_major ;;
  }

  dimension: app_v_minor {
    type: string
    sql: ${TABLE}.app_v_minor ;;
  }

  dimension: app_v_release {
    type: string
    sql: ${TABLE}.app_v_release ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }

  dimension: audit_id {
    type: number
    sql: ${TABLE}.audit_id ;;
  }

  dimension: business_uuid {
    type: string
    sql: ${TABLE}.business_uuid ;;
  }

  dimension: config {
    type: string
    sql: ${TABLE}.config ;;
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
    sql: ${TABLE}.deleted ;;
  }

  dimension: device_identifier {
    type: string
    sql: ${TABLE}.device_identifier ;;
  }

  dimension: device_token {
    type: string
    sql: ${TABLE}.device_token ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }

  dimension_group: last_updated {
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
    sql: ${TABLE}.last_updated ;;
  }

  dimension: make {
    type: string
    sql: ${TABLE}.make ;;
  }

  dimension: metadata {
    type: string
    sql: ${TABLE}.metadata ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: os {
    type: string
    sql: ${TABLE}.os ;;
  }

  dimension: row_deleted {
    type: yesno
    sql: ${TABLE}.row_deleted ;;
  }

  dimension_group: row_updated {
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
    sql: ${TABLE}.row_updated ;;
  }

  dimension: updated_by_uuid {
    type: string
    sql: ${TABLE}.updated_by_uuid ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
