# The name of this view in Looker is "V Reader Transfers"
view: v_reader_transfers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_reader_transfers ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "From Business Uuid" in Explore.

  dimension: from_business_uuid {
    type: string
    sql: ${TABLE}.from_business_uuid ;;
  }

  dimension: from_name {
    type: string
    sql: ${TABLE}.from_name ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: order_created {
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
    sql: ${TABLE}.order_created ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}.order_type ;;
  }

  dimension: order_uuid {
    type: string
    sql: ${TABLE}.order_uuid ;;
  }

  dimension_group: reader_reallocation {
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
    sql: ${TABLE}.reader_reallocation_date ;;
  }

  dimension: reader_type {
    type: string
    sql: ${TABLE}.reader_type ;;
  }

  dimension: reader_uuid {
    type: string
    sql: ${TABLE}.reader_uuid ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}.serial_number ;;
  }

  dimension: to_business_uuid {
    type: string
    sql: ${TABLE}.to_business_uuid ;;
  }

  dimension: to_name {
    type: string
    sql: ${TABLE}.to_name ;;
  }

  measure: count {
    type: count
    drill_fields: [from_name, to_name]
  }
}
