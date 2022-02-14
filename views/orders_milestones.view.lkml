# The name of this view in Looker is "Orders Milestones"
view: orders_milestones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.orders_milestones ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cancelled" in Explore.

  dimension: cancelled {
    type: yesno
    sql: ${TABLE}.cancelled ;;
  }

  dimension: ccd_integration {
    type: yesno
    sql: ${TABLE}.ccd_integration ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: delivered {
    type: yesno
    sql: ${TABLE}.delivered ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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

  dimension: dispatch_location {
    type: string
    sql: ${TABLE}.dispatch_location ;;
  }

  dimension_group: dispatch_start {
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
    sql: ${TABLE}.dispatch_start_date ;;
  }

  dimension: dispatch_to_delivery {
    type: number
    sql: ${TABLE}.dispatch_to_delivery ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_dispatch_to_delivery {
    type: sum
    sql: ${dispatch_to_delivery} ;;
  }

  measure: average_dispatch_to_delivery {
    type: average
    sql: ${dispatch_to_delivery} ;;
  }

  dimension: dispatch_to_ready_for_collection {
    type: number
    sql: ${TABLE}.dispatch_to_ready_for_collection ;;
  }

  dimension: dispatched {
    type: yesno
    sql: ${TABLE}.dispatched ;;
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

  dimension: for_dispatch {
    type: yesno
    sql: ${TABLE}.for_dispatch ;;
  }

  dimension_group: fulfilment_state_assigning_readers {
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
    sql: ${TABLE}.fulfilment_state_assigning_readers ;;
  }

  dimension_group: fulfilment_state_awaiting_payment {
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
    sql: ${TABLE}.fulfilment_state_awaiting_payment ;;
  }

  dimension_group: fulfilment_state_awaiting_payment_confirmation {
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
    sql: ${TABLE}.fulfilment_state_awaiting_payment_confirmation ;;
  }

  dimension_group: fulfilment_state_awaiting_vetting_approval {
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
    sql: ${TABLE}.fulfilment_state_awaiting_vetting_approval ;;
  }

  dimension_group: fulfilment_state_cancelled {
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
    sql: ${TABLE}.fulfilment_state_cancelled ;;
  }

  dimension_group: fulfilment_state_delivered {
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
    sql: ${TABLE}.fulfilment_state_delivered ;;
  }

  dimension_group: fulfilment_state_dispatched {
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
    sql: ${TABLE}.fulfilment_state_dispatched ;;
  }

  dimension_group: fulfilment_state_failed {
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
    sql: ${TABLE}.fulfilment_state_failed ;;
  }

  dimension_group: fulfilment_state_on_hold {
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
    sql: ${TABLE}.fulfilment_state_on_hold ;;
  }

  dimension_group: fulfilment_state_order_placed {
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
    sql: ${TABLE}.fulfilment_state_order_placed ;;
  }

  dimension_group: fulfilment_state_payment_completed {
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
    sql: ${TABLE}.fulfilment_state_payment_completed ;;
  }

  dimension_group: fulfilment_state_picking_and_packing {
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
    sql: ${TABLE}.fulfilment_state_picking_and_packing ;;
  }

  dimension_group: fulfilment_state_ready_for_collection {
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
    sql: ${TABLE}.fulfilment_state_ready_for_collection ;;
  }

  dimension_group: fulfilment_state_returned {
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
    sql: ${TABLE}.fulfilment_state_returned ;;
  }

  dimension_group: fulfilment_state_returned_bought_back {
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
    sql: ${TABLE}.fulfilment_state_returned_bought_back ;;
  }

  dimension: invoice_number {
    type: string
    sql: ${TABLE}.invoice_number ;;
  }

  dimension: logistics_order {
    type: yesno
    sql: ${TABLE}.logistics_order ;;
  }

  dimension_group: logistics_start {
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
    sql: ${TABLE}.logistics_start ;;
  }

  dimension: order_to_delivery {
    type: number
    sql: ${TABLE}.order_to_delivery ;;
  }

  dimension: order_to_dispatch {
    type: number
    sql: ${TABLE}.order_to_dispatch ;;
  }

  dimension: order_to_pnp {
    type: number
    sql: ${TABLE}.order_to_pnp ;;
  }

  dimension: order_to_ready_for_collection {
    type: number
    sql: ${TABLE}.order_to_ready_for_collection ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}.order_type ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.payment_method ;;
  }

  dimension_group: payment_state_approved {
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
    sql: ${TABLE}.payment_state_approved ;;
  }

  dimension_group: payment_state_created {
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
    sql: ${TABLE}.payment_state_created ;;
  }

  dimension_group: payment_state_failed {
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
    sql: ${TABLE}.payment_state_failed ;;
  }

  dimension_group: payment_state_incomplete {
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
    sql: ${TABLE}.payment_state_incomplete ;;
  }

  dimension_group: payment_state_pending {
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
    sql: ${TABLE}.payment_state_pending ;;
  }

  dimension_group: payment_state_provisionally_approved {
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
    sql: ${TABLE}.payment_state_provisionally_approved ;;
  }

  dimension: pnp_to_dispatch {
    type: number
    sql: ${TABLE}.pnp_to_dispatch ;;
  }

  dimension: ready_for_collection {
    type: yesno
    sql: ${TABLE}.ready_for_collection ;;
  }

  dimension: ready_for_collection_to_delivered {
    type: number
    sql: ${TABLE}.ready_for_collection_to_delivered ;;
  }

  dimension: requires_fica {
    type: string
    sql: ${TABLE}.requires_fica ;;
  }

  dimension: retail {
    type: yesno
    sql: ${TABLE}.retail ;;
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

  dimension: tracking_number {
    type: string
    sql: ${TABLE}.tracking_number ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  dimension: yoco_store {
    type: yesno
    sql: ${TABLE}.yoco_store ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
