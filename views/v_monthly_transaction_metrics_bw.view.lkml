# The name of this view in Looker is "V Monthly Transaction Metrics Bw"
view: v_monthly_transaction_metrics_bw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_monthly_transaction_metrics_bw ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Active Merchants" in Explore.

  dimension: active_merchants {
    type: number
    sql: ${TABLE}.active_merchants ;;
  }

  dimension: avg_txn_value {
    type: number
    sql: ${TABLE}.avg_txn_value ;;
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

  dimension: txn_count {
    type: number
    sql: ${TABLE}.txn_count ;;
  }

  dimension: txn_revenue_ex_vat {
    type: number
    sql: ${TABLE}.txn_revenue_ex_vat ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_txn_revenue_ex_vat {
    type: sum
    sql: ${txn_revenue_ex_vat} ;;
  }

  measure: average_txn_revenue_ex_vat {
    type: average
    sql: ${txn_revenue_ex_vat} ;;
  }

  dimension: txn_revenue_in_vat {
    type: number
    sql: ${TABLE}.txn_revenue_in_vat ;;
  }

  dimension: txn_volume {
    type: number
    sql: ${TABLE}.txn_volume ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
