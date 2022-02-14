# The name of this view in Looker is "V Merchant Weekly Profile"
view: v_merchant_weekly_profile {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_merchant_weekly_profile ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Active Days Last 28" in Explore.

  dimension: active_days_last_28 {
    type: number
    sql: ${TABLE}.active_days_last_28 ;;
  }

  dimension: active_week_flag {
    type: number
    sql: ${TABLE}.active_week_flag ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: activity_week {
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
    sql: ${TABLE}.activity_week ;;
  }

  dimension: business_type {
    type: string
    sql: ${TABLE}.business_type ;;
  }

  dimension: business_uuid {
    type: string
    sql: ${TABLE}.business_uuid ;;
  }

  dimension: capital_active_loan {
    type: yesno
    sql: ${TABLE}.capital_active_loan ;;
  }

  dimension: capital_is_paid {
    type: yesno
    sql: ${TABLE}.capital_is_paid ;;
  }

  dimension: capital_loan_amount {
    type: number
    sql: ${TABLE}.capital_loan_amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_capital_loan_amount {
    type: sum
    sql: ${capital_loan_amount} ;;
  }

  measure: average_capital_loan_amount {
    type: average
    sql: ${capital_loan_amount} ;;
  }

  dimension: capital_loan_number {
    type: number
    sql: ${TABLE}.capital_loan_number ;;
  }

  dimension: card_go_count {
    type: number
    sql: ${TABLE}.card_go_count ;;
  }

  dimension: card_go_tpv {
    type: number
    sql: ${TABLE}.card_go_tpv ;;
  }

  dimension: card_lite_count {
    type: number
    sql: ${TABLE}.card_lite_count ;;
  }

  dimension: card_lite_tpv {
    type: number
    sql: ${TABLE}.card_lite_tpv ;;
  }

  dimension: card_machines_count {
    type: number
    sql: ${TABLE}.card_machines_count ;;
  }

  dimension: card_neo_count {
    type: number
    sql: ${TABLE}.card_neo_count ;;
  }

  dimension: card_neo_tpv {
    type: number
    sql: ${TABLE}.card_neo_tpv ;;
  }

  dimension: card_other_count {
    type: number
    sql: ${TABLE}.card_other_count ;;
  }

  dimension: card_other_tpv {
    type: number
    sql: ${TABLE}.card_other_tpv ;;
  }

  dimension: card_pro_count {
    type: number
    sql: ${TABLE}.card_pro_count ;;
  }

  dimension: card_pro_tpv {
    type: number
    sql: ${TABLE}.card_pro_tpv ;;
  }

  dimension: churned_flag {
    type: number
    sql: ${TABLE}.churned_flag ;;
  }

  dimension_group: cohort_week {
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
    sql: ${TABLE}.cohort_week ;;
  }

  dimension: days_since_last_txn {
    type: number
    sql: ${TABLE}.days_since_last_txn ;;
  }

  dimension: days_with_yoco {
    type: number
    sql: ${TABLE}.days_with_yoco ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: industry_l1 {
    type: string
    sql: ${TABLE}.industry_l1 ;;
  }

  dimension: industry_l2 {
    type: string
    sql: ${TABLE}.industry_l2 ;;
  }

  dimension: intended_product {
    type: string
    sql: ${TABLE}.intended_product ;;
  }

  dimension: merchant_payment_profile {
    type: string
    sql: ${TABLE}.merchant_payment_profile ;;
  }

  dimension: merchant_sale_type {
    type: string
    sql: ${TABLE}.merchant_sale_type ;;
  }

  dimension: never_flag {
    type: number
    sql: ${TABLE}.never_flag ;;
  }

  dimension: new_active_flag {
    type: number
    sql: ${TABLE}.new_active_flag ;;
  }

  dimension: online_products_count {
    type: number
    sql: ${TABLE}.online_products_count ;;
  }

  dimension: online_products_tpv {
    type: number
    sql: ${TABLE}.online_products_tpv ;;
  }

  dimension: online_store_count {
    type: number
    sql: ${TABLE}.online_store_count ;;
  }

  dimension: online_store_tpv {
    type: number
    sql: ${TABLE}.online_store_tpv ;;
  }

  dimension: owner_age {
    type: number
    sql: ${TABLE}.owner_age ;;
  }

  dimension: pay_by_link_count {
    type: number
    sql: ${TABLE}.pay_by_link_count ;;
  }

  dimension: pay_by_link_tpv {
    type: number
    sql: ${TABLE}.pay_by_link_tpv ;;
  }

  dimension: qr_count {
    type: number
    sql: ${TABLE}.qr_count ;;
  }

  dimension: qr_tpv {
    type: number
    sql: ${TABLE}.qr_tpv ;;
  }

  dimension: reactivated_flag {
    type: number
    sql: ${TABLE}.reactivated_flag ;;
  }

  dimension: retained_flag {
    type: number
    sql: ${TABLE}.retained_flag ;;
  }

  dimension: running_total_margin_excl_ono {
    type: number
    sql: ${TABLE}.running_total_margin_excl_ono ;;
  }

  dimension: running_total_margin_incl_ono {
    type: number
    sql: ${TABLE}.running_total_margin_incl_ono ;;
  }

  dimension: running_total_tpv {
    type: number
    sql: ${TABLE}.running_total_tpv ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}.size ;;
  }

  dimension: support_ticket_count {
    type: number
    sql: ${TABLE}.support_ticket_count ;;
  }

  dimension: thrive_api_count {
    type: number
    sql: ${TABLE}.thrive_api_count ;;
  }

  dimension: thrive_api_tpv {
    type: number
    sql: ${TABLE}.thrive_api_tpv ;;
  }

  dimension: total_active_weeks {
    type: number
    sql: ${TABLE}.total_active_weeks ;;
  }

  dimension: total_card_machines_tpv {
    type: number
    sql: ${TABLE}.total_card_machines_tpv ;;
  }

  dimension: total_tpv {
    type: number
    sql: ${TABLE}.total_tpv ;;
  }

  dimension: total_transaction_margin_excl_ono {
    type: number
    sql: ${TABLE}.total_transaction_margin_excl_ono ;;
  }

  dimension: total_transaction_margin_incl_ono {
    type: number
    sql: ${TABLE}.total_transaction_margin_incl_ono ;;
  }

  dimension: trading_name {
    type: string
    sql: ${TABLE}.trading_name ;;
  }

  dimension: transaction_profile {
    type: string
    sql: ${TABLE}.transaction_profile ;;
  }

  dimension: virtual_card_count {
    type: number
    sql: ${TABLE}.virtual_card_count ;;
  }

  dimension: virtual_card_tpv {
    type: number
    sql: ${TABLE}.virtual_card_tpv ;;
  }

  dimension: voucher_count {
    type: number
    sql: ${TABLE}.voucher_count ;;
  }

  dimension: voucher_tpv {
    type: number
    sql: ${TABLE}.voucher_tpv ;;
  }

  dimension: website_plugins_count {
    type: number
    sql: ${TABLE}.website_plugins_count ;;
  }

  dimension: website_plugins_tpv {
    type: number
    sql: ${TABLE}.website_plugins_tpv ;;
  }

  dimension: weeks_with_yoco {
    type: number
    sql: ${TABLE}.weeks_with_yoco ;;
  }

  measure: count {
    type: count
    drill_fields: [trading_name]
  }
}
