# The name of this view in Looker is "Monthly Sms Fees"
view: monthly_sms_fees {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.monthly_sms_fees ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: month {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.month ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Sms Count" in Explore.

  dimension: sms_count {
    type: number
    sql: ${TABLE}.sms_count ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_sms_count {
    type: sum
    sql: ${sms_count} ;;
  }

  measure: average_sms_count {
    type: average
    sql: ${sms_count} ;;
  }

  dimension: sms_receipt_fees {
    type: number
    sql: ${TABLE}.sms_receipt_fees ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
