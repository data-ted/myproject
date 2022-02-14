# The name of this view in Looker is "V Txn Summary"
view: v_txn_summary {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_txn_summary ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acquirer Fee" in Explore.

  dimension: acquirer_fee {
    type: number
    sql: ${TABLE}.acquirer_fee ;;
  }

  dimension: activation {
    type: yesno
    sql: ${TABLE}.activation ;;
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

  dimension: app_v_build {
    type: string
    sql: ${TABLE}.app_v_build ;;
  }

  dimension: app_v_major {
    type: string
    sql: ${TABLE}.app_v_major ;;
  }

  dimension: app_v_minor {
    type: string
    sql: ${TABLE}.app_v_minor ;;
  }

  dimension: app_v_release {
    type: string
    sql: ${TABLE}.app_v_release ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }

  dimension: assessment_fee {
    type: number
    sql: ${TABLE}.assessment_fee ;;
  }

  dimension: avg_eft_fee {
    type: number
    sql: ${TABLE}.avg_eft_fee ;;
  }

  dimension: avg_sms_fee {
    type: number
    sql: ${TABLE}.avg_sms_fee ;;
  }

  dimension: bill_count {
    type: number
    sql: ${TABLE}.bill_count ;;
  }

  dimension: business_uuid {
    type: string
    sql: ${TABLE}.business_uuid ;;
  }

  dimension: card_institution {
    type: string
    sql: ${TABLE}.card_institution ;;
  }

  dimension: card_international {
    type: yesno
    sql: ${TABLE}.card_international ;;
  }

  dimension: card_scheme {
    type: string
    sql: ${TABLE}.card_scheme ;;
  }

  dimension: card_type {
    type: string
    sql: ${TABLE}.card_type ;;
  }

  dimension: clearing_terminal_id {
    type: string
    sql: ${TABLE}.clearing_terminal_id ;;
  }

  dimension: con_type {
    type: string
    sql: ${TABLE}.con_type ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
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
    sql: ${TABLE}.created ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: custom_payments {
    type: string
    sql: ${TABLE}.custom_payments ;;
  }

  dimension: day_hour {
    type: number
    sql: ${TABLE}.day_hour ;;
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

  dimension: fee_tax_amount {
    type: number
    sql: ${TABLE}.fee_tax_amount ;;
  }

  dimension: hosting_fee {
    type: number
    sql: ${TABLE}.hosting_fee ;;
  }

  dimension: inbound_settlement_state {
    type: string
    sql: ${TABLE}.inbound_settlement_state ;;
  }

  dimension: integration {
    type: string
    sql: ${TABLE}.integration ;;
  }

  dimension: intended_product {
    type: string
    sql: ${TABLE}.intended_product ;;
  }

  dimension: interchange_fee {
    type: number
    sql: ${TABLE}.interchange_fee ;;
  }

  dimension: is_nfc {
    type: yesno
    sql: ${TABLE}.is_nfc ;;
  }

  dimension: is_with_item {
    type: number
    sql: ${TABLE}.is_with_item ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}.long ;;
  }

  dimension: net_name {
    type: string
    sql: ${TABLE}.net_name ;;
  }

  dimension: payment_channel {
    type: string
    sql: ${TABLE}.payment_channel ;;
  }

  dimension: payment_details_customer_verification {
    type: string
    sql: ${TABLE}.payment_details_customer_verification ;;
  }

  dimension: payment_details_source {
    type: string
    sql: ${TABLE}.payment_details_source ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.payment_method ;;
  }

  dimension: payment_processor {
    type: string
    sql: ${TABLE}.payment_processor ;;
  }

  dimension: payment_product {
    type: string
    sql: ${TABLE}.payment_product ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.payment_type ;;
  }

  dimension: phone_type {
    type: string
    sql: ${TABLE}.phone_type ;;
  }

  dimension: processing_bank {
    type: string
    sql: ${TABLE}.processing_bank ;;
  }

  dimension: processing_fee {
    type: number
    sql: ${TABLE}.processing_fee ;;
  }

  dimension: reader_type {
    type: string
    sql: ${TABLE}.reader_type ;;
  }

  dimension: scheme {
    type: string
    sql: ${TABLE}.scheme ;;
  }

  dimension: settlement_amount {
    type: number
    sql: ${TABLE}.settlement_amount ;;
  }

  dimension: settlement_avg_hours {
    type: number
    sql: ${TABLE}.settlement_avg_hours ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: switching_fee {
    type: number
    sql: ${TABLE}.switching_fee ;;
  }

  dimension: tip_amount {
    type: number
    sql: ${TABLE}.tip_amount ;;
  }

  dimension: transaction_count {
    type: number
    sql: ${TABLE}.transaction_count ;;
  }

  dimension: transaction_margin {
    type: number
    sql: ${TABLE}.transaction_margin ;;
  }

  dimension: transaction_state {
    type: string
    sql: ${TABLE}.transaction_state ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.transaction_type ;;
  }

  dimension_group: txn_month_cohort {
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
    sql: ${TABLE}.txn_month_cohort ;;
  }

  dimension: vat_amount {
    type: number
    sql: ${TABLE}.vat_amount ;;
  }

  measure: count {
    type: count
    drill_fields: [net_name]
  }
}
