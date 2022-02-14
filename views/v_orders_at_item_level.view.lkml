# The name of this view in Looker is "V Orders At Item Level"
view: v_orders_at_item_level {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_orders_at_item_level ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Actual Amount Paid" in Explore.

  dimension: actual_amount_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.actual_amount_paid ;;
  }

  dimension: admin_order_link {
    type: string
    sql: ${TABLE}.admin_order_link ;;
  }

  dimension: business_name {
    type: string
    sql: ${TABLE}.business_name ;;
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

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discount_amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_discount_amount {
    type: sum
    sql: ${discount_amount} ;;
  }

  measure: average_discount_amount {
    type: average
    sql: ${discount_amount} ;;
  }

  dimension: discount_factor {
    type: number
    sql: ${TABLE}.discount_factor ;;
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

  dimension: fulfilment_state {
    type: string
    sql: ${TABLE}.fulfilment_state ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: invoice_number {
    type: string
    sql: ${TABLE}.invoice_number ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_item_number {
    type: number
    sql: ${TABLE}.order_item_number ;;
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

  dimension: promocode_discount {
    type: number
    sql: ${TABLE}.promocode_discount ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension_group: received {
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
    sql: ${TABLE}.received_on ;;
  }

  dimension: sale_location {
    type: string
    sql: ${TABLE}.sale_location ;;
  }

  dimension: total_per_device_excl_vat {
    type: number
    sql: ${TABLE}.total_per_device_excl_vat ;;
  }

  dimension: total_per_device_incl_vat {
    type: number
    sql: ${TABLE}.total_per_device_incl_vat ;;
  }

  dimension: total_to_be_paid_excl_vat {
    type: number
    sql: ${TABLE}.total_to_be_paid_excl_vat ;;
  }

  dimension: total_to_be_paid_incl_vat {
    type: number
    sql: ${TABLE}.total_to_be_paid_incl_vat ;;
  }

  dimension: vetting_state {
    type: string
    sql: ${TABLE}.vetting_state ;;
  }

  measure: count {
    type: count
    drill_fields: [business_name]
  }
}
