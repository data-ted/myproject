# The name of this view in Looker is "Monthly Acquirer Fees"
view: monthly_acquirer_fees {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.monthly_acquirer_fees ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acquirer Fee per Volume" in Explore.

  dimension: acquirer_fee_per_volume {
    type: number
    sql: ${TABLE}.acquirer_fee_per_volume ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_acquirer_fee_per_volume {
    type: sum
    sql: ${acquirer_fee_per_volume} ;;
  }

  measure: average_acquirer_fee_per_volume {
    type: average
    sql: ${acquirer_fee_per_volume} ;;
  }

  dimension: acquirer_fees {
    type: number
    sql: ${TABLE}.acquirer_fees ;;
  }

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

  dimension: volume {
    type: number
    sql: ${TABLE}.volume ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
