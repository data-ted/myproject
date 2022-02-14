# The name of this view in Looker is "V Modified Outbound Settlements"
view: v_modified_outbound_settlements {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_modified_outbound_settlements ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Business Uuid" in Explore.

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

  dimension: fee_amount {
    type: number
    sql: ${TABLE}.fee_amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_fee_amount {
    type: sum
    sql: ${fee_amount} ;;
  }

  measure: average_fee_amount {
    type: average
    sql: ${fee_amount} ;;
  }

  dimension: fee_amount_ex_vat {
    type: number
    sql: ${TABLE}.fee_amount_ex_vat ;;
  }

  dimension: fee_tax_amount {
    type: number
    sql: ${TABLE}.fee_tax_amount ;;
  }

  dimension: inbound_settlement_state {
    type: string
    sql: ${TABLE}.inbound_settlement_state ;;
  }

  dimension: payout_uuid {
    type: string
    sql: ${TABLE}.payout_uuid ;;
  }

  dimension_group: reconned {
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
    sql: ${TABLE}.reconned_date ;;
  }

  dimension: settlement_amount {
    type: number
    sql: ${TABLE}.settlement_amount ;;
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
