# The name of this view in Looker is "V Operations Definitions"
view: v_operations_definitions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_operations_definitions ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: additional_info_collected {
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
    sql: ${TABLE}.additional_info_collected ;;
  }

  dimension_group: bank_account_details_submitted {
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
    sql: ${TABLE}.bank_account_details_submitted ;;
  }

  dimension_group: bank_account_update_approved {
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
    sql: ${TABLE}.bank_account_update_approved ;;
  }

  dimension_group: bank_account_update_declined {
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
    sql: ${TABLE}.bank_account_update_declined ;;
  }

  dimension_group: bank_account_update_executed {
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
    sql: ${TABLE}.bank_account_update_executed ;;
  }

  dimension_group: bank_account_update_manually_executed {
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
    sql: ${TABLE}.bank_account_update_manually_executed ;;
  }

  dimension_group: bank_account_update_requested {
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
    sql: ${TABLE}.bank_account_update_requested ;;
  }

  dimension_group: bank_details_confirmed {
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
    sql: ${TABLE}.bank_details_confirmed ;;
  }

  dimension_group: became_lead {
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
    sql: ${TABLE}.became_lead ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Business Uuid" in Explore.

  dimension: business_uuid {
    type: string
    sql: ${TABLE}.business_uuid ;;
  }

  dimension: collection_and_hand_delivery {
    type: yesno
    sql: ${TABLE}.collection_and_hand_delivery ;;
  }

  dimension: commitment {
    type: yesno
    sql: ${TABLE}.commitment ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: courier_delivery {
    type: yesno
    sql: ${TABLE}.courier_delivery ;;
  }

  dimension_group: credit_txn_aborted {
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
    sql: ${TABLE}.credit_txn_aborted ;;
  }

  dimension_group: credit_txn_approved {
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
    sql: ${TABLE}.credit_txn_approved ;;
  }

  dimension_group: credit_txn_declined {
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
    sql: ${TABLE}.credit_txn_declined ;;
  }

  dimension_group: credit_txn_error {
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
    sql: ${TABLE}.credit_txn_error ;;
  }

  dimension_group: credit_txn_fifth {
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
    sql: ${TABLE}.credit_txn_fifth ;;
  }

  dimension_group: credit_txn_more_15 {
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
    sql: ${TABLE}.credit_txn_more_15 ;;
  }

  dimension_group: credit_txn_refunded {
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
    sql: ${TABLE}.credit_txn_refunded ;;
  }

  dimension_group: digital_fica {
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
    sql: ${TABLE}.digital_fica ;;
  }

  dimension: eft {
    type: yesno
    sql: ${TABLE}.eft ;;
  }

  dimension_group: eft_in_flight {
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
    sql: ${TABLE}.eft_in_flight ;;
  }

  dimension_group: emandate_accepted {
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
    sql: ${TABLE}.emandate_accepted ;;
  }

  dimension_group: fica_approved {
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
    sql: ${TABLE}.fica_approved ;;
  }

  dimension_group: fica_being_reviewed {
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
    sql: ${TABLE}.fica_being_reviewed ;;
  }

  dimension_group: fica_digital_approved {
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
    sql: ${TABLE}.fica_digital_approved ;;
  }

  dimension_group: fica_digital_submitted {
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
    sql: ${TABLE}.fica_digital_submitted ;;
  }

  dimension_group: fica_incomplete {
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
    sql: ${TABLE}.fica_incomplete ;;
  }

  dimension_group: fica_requested {
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
    sql: ${TABLE}.fica_requested ;;
  }

  dimension_group: first_payout {
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
    sql: ${TABLE}.first_payout ;;
  }

  dimension_group: first_payout_after_transaction {
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
    sql: ${TABLE}.first_payout_after_transaction ;;
  }

  dimension_group: first_reader_replacement {
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
    sql: ${TABLE}.first_reader_replacement ;;
  }

  dimension: fully_auto_vetting {
    type: yesno
    sql: ${TABLE}.fully_auto_vetting ;;
  }

  dimension: lead {
    type: yesno
    sql: ${TABLE}.lead ;;
  }

  dimension: light_touch_vetting {
    type: yesno
    sql: ${TABLE}.light_touch_vetting ;;
  }

  dimension_group: logistics_assigning_readers {
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
    sql: ${TABLE}.logistics_assigning_readers ;;
  }

  dimension_group: logistics_awaiting_payment {
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
    sql: ${TABLE}.logistics_awaiting_payment ;;
  }

  dimension_group: logistics_awaiting_payment_confirmation {
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
    sql: ${TABLE}.logistics_awaiting_payment_confirmation ;;
  }

  dimension_group: logistics_awaiting_vetting_approval {
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
    sql: ${TABLE}.logistics_awaiting_vetting_approval ;;
  }

  dimension_group: logistics_cancelled {
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
    sql: ${TABLE}.logistics_cancelled ;;
  }

  dimension_group: logistics_delivered_state {
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
    sql: ${TABLE}.logistics_delivered_state ;;
  }

  dimension_group: logistics_delivery {
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
    sql: ${TABLE}.logistics_delivery ;;
  }

  dimension_group: logistics_dispatch {
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
    sql: ${TABLE}.logistics_dispatch ;;
  }

  dimension_group: logistics_dispatched_state {
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
    sql: ${TABLE}.logistics_dispatched_state ;;
  }

  dimension_group: logistics_failed {
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
    sql: ${TABLE}.logistics_failed ;;
  }

  dimension_group: logistics_on_hold {
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
    sql: ${TABLE}.logistics_on_hold ;;
  }

  dimension_group: logistics_order_placed {
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
    sql: ${TABLE}.logistics_order_placed ;;
  }

  dimension_group: logistics_payment_completed {
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
    sql: ${TABLE}.logistics_payment_completed ;;
  }

  dimension_group: logistics_picking_and_packing {
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
    sql: ${TABLE}.logistics_picking_and_packing ;;
  }

  dimension_group: logistics_ready_for_collection {
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
    sql: ${TABLE}.logistics_ready_for_collection ;;
  }

  dimension_group: logistics_returned {
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
    sql: ${TABLE}.logistics_returned ;;
  }

  dimension_group: logistics_returned_bought_back {
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
    sql: ${TABLE}.logistics_returned_bought_back ;;
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

  dimension: manual_ahv {
    type: yesno
    sql: ${TABLE}.manual_ahv ;;
  }

  dimension: manual_fica {
    type: yesno
    sql: ${TABLE}.manual_fica ;;
  }

  dimension: manual_vetting {
    type: yesno
    sql: ${TABLE}.manual_vetting ;;
  }

  dimension: onboarding_complete {
    type: yesno
    sql: ${TABLE}.onboarding_complete ;;
  }

  dimension: opportunity {
    type: yesno
    sql: ${TABLE}.opportunity ;;
  }

  dimension_group: order_confirmed {
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
    sql: ${TABLE}.order_confirmed ;;
  }

  dimension: order_fulfilled {
    type: yesno
    sql: ${TABLE}.order_fulfilled ;;
  }

  dimension_group: order_payment_state_approved {
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
    sql: ${TABLE}.order_payment_state_approved ;;
  }

  dimension_group: order_payment_state_created {
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
    sql: ${TABLE}.order_payment_state_created ;;
  }

  dimension_group: order_payment_state_failed {
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
    sql: ${TABLE}.order_payment_state_failed ;;
  }

  dimension_group: order_payment_state_incomplete {
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
    sql: ${TABLE}.order_payment_state_incomplete ;;
  }

  dimension_group: order_payment_state_pending {
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
    sql: ${TABLE}.order_payment_state_pending ;;
  }

  dimension_group: order_payment_state_provisionally_approved {
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
    sql: ${TABLE}.order_payment_state_provisionally_approved ;;
  }

  dimension_group: payment_commitment {
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
    sql: ${TABLE}.payment_commitment ;;
  }

  dimension_group: reader_allocation_state_allocated {
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
    sql: ${TABLE}.reader_allocation_state_allocated ;;
  }

  dimension_group: ready_for_vetting {
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
    sql: ${TABLE}.ready_for_vetting ;;
  }

  dimension: retail_sale {
    type: yesno
    sql: ${TABLE}.retail_sale ;;
  }

  dimension: sale_type {
    type: string
    sql: ${TABLE}.sale_type ;;
  }

  dimension: settlement_active {
    type: yesno
    sql: ${TABLE}.settlement_active ;;
  }

  dimension: successful_sale {
    type: yesno
    sql: ${TABLE}.successful_sale ;;
  }

  dimension: vetted {
    type: yesno
    sql: ${TABLE}.vetted ;;
  }

  dimension_group: vetting_approved {
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
    sql: ${TABLE}.vetting_approved ;;
  }

  dimension_group: vetting_auto_approved {
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
    sql: ${TABLE}.vetting_auto_approved ;;
  }

  dimension_group: vetting_state_automated_vetting_failed {
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
    sql: ${TABLE}.vetting_state_automated_vetting_failed ;;
  }

  dimension_group: vetting_state_failed {
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
    sql: ${TABLE}.vetting_state_failed ;;
  }

  dimension_group: vetting_state_on_hold {
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
    sql: ${TABLE}.vetting_state_on_hold ;;
  }

  dimension_group: vetting_state_open {
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
    sql: ${TABLE}.vetting_state_open ;;
  }

  dimension_group: vetting_state_partial {
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
    sql: ${TABLE}.vetting_state_partial ;;
  }

  dimension_group: vetting_state_requires_manual_decision {
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
    sql: ${TABLE}.vetting_state_requires_manual_decision ;;
  }

  dimension_group: vetting_yoco_staff_touch {
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
    sql: ${TABLE}.vetting_yoco_staff_touch ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
