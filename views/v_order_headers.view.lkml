# The name of this view in Looker is "V Order Headers"
view: v_order_headers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_order_headers ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amount Paid" in Explore.

  dimension: amount_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.amount_paid ;;
  }

  dimension: business_uuid {
    type: string
    sql: ${TABLE}.business_uuid ;;
  }

  dimension: ccd_integration {
    type: yesno
    sql: ${TABLE}.ccd_integration ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ccd_reader_allocation_timestamp {
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
    sql: ${TABLE}.ccd_reader_allocation_timestamp ;;
  }

  dimension: ccd_reference_number {
    type: string
    sql: ${TABLE}.ccd_reference_number ;;
  }

  dimension: ccd_state {
    type: string
    sql: ${TABLE}.ccd_state ;;
  }

  dimension: ccd_state_message {
    type: string
    sql: ${TABLE}.ccd_state_message ;;
  }

  dimension_group: ccd_state_timestamp {
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
    sql: ${TABLE}.ccd_state_timestamp ;;
  }

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

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: delivery_method {
    type: string
    sql: ${TABLE}.delivery_method ;;
  }

  dimension: discount {
    type: string
    sql: ${TABLE}.discount ;;
  }

  dimension: dispatch_location {
    type: string
    sql: ${TABLE}.dispatch_location ;;
  }

  dimension_group: dispatched_start {
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
    sql: ${TABLE}.dispatched_start_date ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: fulfilment_state {
    type: string
    sql: ${TABLE}.fulfilment_state ;;
  }

  dimension: invoice_number {
    type: string
    sql: ${TABLE}.invoice_number ;;
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}.order_number ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_order_number {
    type: sum
    sql: ${order_number} ;;
  }

  measure: average_order_number {
    type: average
    sql: ${order_number} ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}.order_type ;;
  }

  dimension: order_uuid {
    type: string
    sql: ${TABLE}.order_uuid ;;
  }

  dimension_group: payment {
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
    sql: ${TABLE}.payment_date ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.payment_method ;;
  }

  dimension: payment_state {
    type: string
    sql: ${TABLE}.payment_state ;;
  }

  dimension: payu_reference {
    type: string
    sql: ${TABLE}.payu_reference ;;
  }

  dimension: percentage_discount {
    type: string
    sql: ${TABLE}.percentage_discount ;;
  }

  dimension: promo_code_discount {
    type: string
    sql: ${TABLE}.promo_code_discount ;;
  }

  dimension: requires_fica {
    type: string
    sql: ${TABLE}.requires_fica ;;
  }

  dimension: sale_location {
    type: string
    sql: ${TABLE}.sale_location ;;
  }

  dimension: sale_sublocation {
    type: string
    sql: ${TABLE}.sale_sublocation ;;
  }

  dimension: sale_type {
    type: string
    sql: ${TABLE}.sale_type ;;
  }

  dimension: serial_numbers {
    type: string
    sql: ${TABLE}.serial_numbers ;;
  }

  dimension: term_action_day {
    type: string
    sql: ${TABLE}.term_action_day ;;
  }

  dimension: term_cash_advance {
    type: number
    sql: ${TABLE}.term_cash_advance ;;
  }

  dimension_group: term_date_accepted {
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
    sql: ${TABLE}.term_date_accepted ;;
  }

  dimension: term_ip_address {
    type: string
    sql: ${TABLE}.term_ip_address ;;
  }

  dimension: term_months {
    type: string
    sql: ${TABLE}.term_months ;;
  }

  dimension: term_processing_fee {
    type: number
    sql: ${TABLE}.term_processing_fee ;;
  }

  dimension: term_purchase_amount {
    type: number
    sql: ${TABLE}.term_purchase_amount ;;
  }

  dimension: term_reference {
    type: string
    sql: ${TABLE}.term_reference ;;
  }

  dimension: term_total_repayable {
    type: number
    sql: ${TABLE}.term_total_repayable ;;
  }

  dimension: term_weekly_amount {
    type: number
    sql: ${TABLE}.term_weekly_amount ;;
  }

  dimension: term_weeks {
    type: string
    sql: ${TABLE}.term_weeks ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: total_tax {
    type: number
    sql: ${TABLE}.total_tax ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}.tracking_number ;;
  }

  dimension: xero_invoice_number {
    type: string
    sql: ${TABLE}.xero_invoice_number ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
