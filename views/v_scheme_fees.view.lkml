# The name of this view in Looker is "V Scheme Fees"
view: v_scheme_fees {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_scheme_fees ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amount" in Explore.

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount {
    type: sum
    sql: ${amount} ;;
  }

  measure: average_amount {
    type: average
    sql: ${amount} ;;
  }

  dimension: assessment_fee_amount {
    type: number
    sql: ${TABLE}.assessment_fee_amount ;;
  }

  dimension: business_uuid {
    type: string
    sql: ${TABLE}.business_uuid ;;
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

  dimension: initial_usd_exchange_rate {
    type: number
    sql: ${TABLE}.initial_usd_exchange_rate ;;
  }

  dimension: switching_fee_amount {
    type: number
    sql: ${TABLE}.switching_fee_amount ;;
  }

  dimension: switching_fee_usd {
    type: number
    sql: ${TABLE}.switching_fee_usd ;;
  }

  dimension: transaction_uuid {
    type: string
    sql: ${TABLE}.transaction_uuid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
