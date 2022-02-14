# The name of this view in Looker is "V Raw Order Headers"
view: v_raw_order_headers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_raw_order_headers ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Audit ID" in Explore.

  dimension: audit_id {
    type: number
    sql: ${TABLE}.audit_id ;;
  }

  dimension: business_uuid {
    type: string
    sql: ${TABLE}.business_uuid ;;
  }

  dimension: ccd_integration {
    type: yesno
    sql: ${TABLE}.ccd_integration ;;
  }

  dimension: ccd_reader_allocation_timestamp {
    type: string
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

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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

  dimension_group: delivery {
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
    sql: ${TABLE}.delivery_date ;;
  }

  dimension: delivery_method {
    type: string
    sql: ${TABLE}.delivery_method ;;
  }

  dimension: discount {
    type: number
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

  dimension_group: expected_delivery {
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
    sql: ${TABLE}.expected_delivery_date ;;
  }

  dimension: fulfilment_state {
    type: string
    sql: ${TABLE}.fulfilment_state ;;
  }

  dimension: invoice_number {
    type: string
    sql: ${TABLE}.invoice_number ;;
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

  dimension: order_type {
    type: string
    sql: ${TABLE}.order_type ;;
  }

  dimension: order_uuid {
    type: string
    sql: ${TABLE}.order_uuid ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.payment_method ;;
  }

  dimension: payment_state {
    type: string
    sql: ${TABLE}.payment_state ;;
  }

  dimension: payment_uuid {
    type: string
    sql: ${TABLE}.payment_uuid ;;
  }

  dimension: payu_reference {
    type: string
    sql: ${TABLE}.payu_reference ;;
  }

  dimension: percentage_discount {
    type: number
    sql: ${TABLE}.percentage_discount ;;
  }

  dimension: promo_code_discount {
    type: number
    sql: ${TABLE}.promo_code_discount ;;
  }

  dimension: requires_fica {
    type: string
    sql: ${TABLE}.requires_fica ;;
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

  dimension: terms_action_day {
    type: string
    sql: ${TABLE}.terms_action_day ;;
  }

  dimension: terms_cash_advance {
    type: string
    sql: ${TABLE}.terms_cash_advance ;;
  }

  dimension_group: terms_date_accepted {
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
    sql: ${TABLE}.terms_date_accepted ;;
  }

  dimension: terms_ip_address {
    type: string
    sql: ${TABLE}.terms_ip_address ;;
  }

  dimension: terms_months {
    type: string
    sql: ${TABLE}.terms_months ;;
  }

  dimension: terms_processing_fee {
    type: number
    sql: ${TABLE}.terms_processing_fee ;;
  }

  dimension: terms_purchase_amount {
    type: number
    sql: ${TABLE}.terms_purchase_amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_terms_purchase_amount {
    type: sum
    sql: ${terms_purchase_amount} ;;
  }

  measure: average_terms_purchase_amount {
    type: average
    sql: ${terms_purchase_amount} ;;
  }

  dimension: terms_reference {
    type: string
    sql: ${TABLE}.terms_reference ;;
  }

  dimension: terms_total_repayable {
    type: number
    sql: ${TABLE}.terms_total_repayable ;;
  }

  dimension: terms_weekly_amount {
    type: number
    sql: ${TABLE}.terms_weekly_amount ;;
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

  dimension: updated_by_uuid {
    type: string
    sql: ${TABLE}.updated_by_uuid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
