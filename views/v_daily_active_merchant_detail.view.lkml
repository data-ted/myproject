# The name of this view in Looker is "V Daily Active Merchant Detail"
view: v_daily_active_merchant_detail {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_daily_active_merchant_detail ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Activity State" in Explore.

  dimension: activity_state {
    type: string
    sql: ${TABLE}.activity_state ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: detailed_state {
    type: string
    sql: ${TABLE}.detailed_state ;;
  }

  dimension: merchants {
    type: number
    sql: ${TABLE}.merchants ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_merchants {
    type: sum
    sql: ${merchants} ;;
  }

  measure: average_merchants {
    type: average
    sql: ${merchants} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
