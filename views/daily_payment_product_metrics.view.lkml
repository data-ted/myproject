# The name of this view in Looker is "Daily Payment Product Metrics"
view: daily_payment_product_metrics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.daily_payment_product_metrics ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

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

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Payment Product" in Explore.

  dimension: payment_product {
    type: string
    sql: ${TABLE}.payment_product ;;
  }

  dimension: thirty_day_actives {
    type: number
    sql: ${TABLE}.thirty_day_actives ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_thirty_day_actives {
    type: sum
    sql: ${thirty_day_actives} ;;
  }

  measure: average_thirty_day_actives {
    type: average
    sql: ${thirty_day_actives} ;;
  }

  dimension: tpv {
    type: number
    sql: ${TABLE}.tpv ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
