# The name of this view in Looker is "Transactions"
view: transactions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.transactions ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Action" in Explore.

  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

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

  dimension: amount_local {
    type: number
    sql: ${TABLE}.amount_local ;;
  }

  dimension: app_connection_type {
    type: string
    sql: ${TABLE}.app_connection_type ;;
  }

  dimension: app_is_beta {
    type: yesno
    sql: ${TABLE}.app_is_beta ;;
  }

  dimension: app_is_custom {
    type: yesno
    sql: ${TABLE}.app_is_custom ;;
  }

  dimension: app_is_desktop {
    type: yesno
    sql: ${TABLE}.app_is_desktop ;;
  }

  dimension: app_is_sdk {
    type: yesno
    sql: ${TABLE}.app_is_sdk ;;
  }

  dimension: app_is_ui {
    type: yesno
    sql: ${TABLE}.app_is_ui ;;
  }

  dimension: app_network_name {
    type: string
    sql: ${TABLE}.app_network_name ;;
  }

  dimension: app_os {
    type: string
    sql: ${TABLE}.app_os ;;
  }

  dimension: app_v_build {
    type: string
    sql: ${TABLE}.app_v_build ;;
  }

  dimension: app_v_major {
    type: number
    sql: ${TABLE}.app_v_major ;;
  }

  dimension: app_v_minor {
    type: number
    sql: ${TABLE}.app_v_minor ;;
  }

  dimension: app_v_patch {
    type: number
    sql: ${TABLE}.app_v_patch ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }

  dimension: bill_uuid {
    type: string
    sql: ${TABLE}.bill_uuid ;;
  }

  dimension: business_uuid {
    type: string
    sql: ${TABLE}.business_uuid ;;
  }

  dimension: failure_category {
    type: string
    sql: ${TABLE}.failure_category ;;
  }

  dimension: fee_amount {
    type: number
    sql: ${TABLE}.fee_amount ;;
  }

  dimension: fee_amount_ex_vat {
    type: number
    sql: ${TABLE}.fee_amount_ex_vat ;;
  }

  dimension: geo_latitude {
    type: number
    sql: ${TABLE}.geo_latitude ;;
  }

  dimension: geo_longitude {
    type: number
    sql: ${TABLE}.geo_longitude ;;
  }

  dimension: is_demo_account {
    type: yesno
    sql: ${TABLE}.is_demo_account ;;
  }

  dimension: is_in_person {
    type: yesno
    sql: ${TABLE}.is_in_person ;;
  }

  dimension: is_integration {
    type: yesno
    sql: ${TABLE}.is_integration ;;
  }

  dimension: is_international {
    type: yesno
    sql: ${TABLE}.is_international ;;
  }

  dimension: is_nfc {
    type: yesno
    sql: ${TABLE}.is_nfc ;;
  }

  dimension: is_online {
    type: yesno
    sql: ${TABLE}.is_online ;;
  }

  dimension: is_test {
    type: yesno
    sql: ${TABLE}.is_test ;;
  }

  dimension: is_tpv {
    type: yesno
    sql: ${TABLE}.is_tpv ;;
  }

  dimension: is_yoco {
    type: yesno
    sql: ${TABLE}.is_yoco ;;
  }

  dimension: original_currency {
    type: string
    sql: ${TABLE}.original_currency ;;
  }

  dimension: payment_channel {
    type: string
    sql: ${TABLE}.payment_channel ;;
  }

  dimension: payment_interaction {
    type: string
    sql: ${TABLE}.payment_interaction ;;
  }

  dimension: payment_network {
    type: string
    sql: ${TABLE}.payment_network ;;
  }

  dimension: payment_pos {
    type: string
    sql: ${TABLE}.payment_pos ;;
  }

  dimension: payment_processor {
    type: string
    sql: ${TABLE}.payment_processor ;;
  }

  dimension: payment_product {
    type: string
    sql: ${TABLE}.payment_product ;;
  }

  dimension: payment_product_category {
    type: string
    sql: ${TABLE}.payment_product_category ;;
  }

  dimension: payment_verification {
    type: string
    sql: ${TABLE}.payment_verification ;;
  }

  dimension: payout_uuid {
    type: string
    sql: ${TABLE}.payout_uuid ;;
  }

  dimension: processing_bank {
    type: string
    sql: ${TABLE}.processing_bank ;;
  }

  dimension: processing_time {
    type: number
    sql: ${TABLE}.processing_time ;;
  }

  dimension: reader_uuid {
    type: string
    sql: ${TABLE}.reader_uuid ;;
  }

  dimension: settlement_bank {
    type: string
    sql: ${TABLE}.settlement_bank ;;
  }

  dimension: settlement_state {
    type: string
    sql: ${TABLE}.settlement_state ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: settlement_submission {
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
    sql: ${TABLE}.settlement_submission_date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tender {
    type: string
    sql: ${TABLE}.tender ;;
  }

  dimension: tender_issuer {
    type: string
    sql: ${TABLE}.tender_issuer ;;
  }

  dimension: tender_type {
    type: string
    sql: ${TABLE}.tender_type ;;
  }

  dimension_group: timestamp_local {
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
    sql: ${TABLE}.timestamp_local ;;
  }

  dimension_group: timestamp_utc {
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
    sql: ${TABLE}.timestamp_utc ;;
  }

  dimension: tip_amount {
    type: number
    sql: ${TABLE}.tip_amount ;;
  }

  dimension: transaction_uuid {
    type: string
    sql: ${TABLE}.transaction_uuid ;;
  }

  dimension: user_uuid {
    type: string
    sql: ${TABLE}.user_uuid ;;
  }

  dimension: vat_amount {
    type: number
    sql: ${TABLE}.vat_amount ;;
  }

  measure: count {
    type: count
    drill_fields: [app_network_name]
  }
}
