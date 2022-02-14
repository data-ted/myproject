# The name of this view in Looker is "V Merchants"
view: v_merchants {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_merchants ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acquisition Channel" in Explore.

  dimension: acquisition_channel {
    type: string
    sql: ${TABLE}.acquisition_channel ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: activation {
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
    sql: ${TABLE}.activation_date ;;
  }

  dimension: attribution_campaign {
    type: string
    sql: ${TABLE}.attribution_campaign ;;
  }

  dimension: attribution_campaign_id {
    type: string
    sql: ${TABLE}.attribution_campaign_id ;;
  }

  dimension: attribution_channel_type {
    type: string
    sql: ${TABLE}.attribution_channel_type ;;
  }

  dimension: attribution_goal {
    type: string
    sql: ${TABLE}.attribution_goal ;;
  }

  dimension: attribution_is_testandlearn {
    type: yesno
    sql: ${TABLE}.attribution_is_testandlearn ;;
  }

  dimension: attribution_medium {
    type: string
    sql: ${TABLE}.attribution_medium ;;
  }

  dimension: attribution_paid_organic {
    type: string
    sql: ${TABLE}.attribution_paid_organic ;;
  }

  dimension: attribution_source {
    type: string
    sql: ${TABLE}.attribution_source ;;
  }

  dimension: attribution_utm_content {
    type: string
    sql: ${TABLE}.attribution_utm_content ;;
  }

  dimension: business_type {
    type: string
    sql: ${TABLE}.business_type ;;
  }

  dimension: business_uuid {
    type: string
    sql: ${TABLE}.business_uuid ;;
  }

  dimension_group: business_won {
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
    sql: ${TABLE}.business_won_date ;;
  }

  dimension: card_machine_in_services {
    type: yesno
    sql: ${TABLE}.card_machine_in_services ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: credit_cnp {
    type: number
    sql: ${TABLE}.credit_cnp ;;
  }

  dimension: credit_cp {
    type: number
    sql: ${TABLE}.credit_cp ;;
  }

  dimension: current_size {
    type: string
    sql: ${TABLE}.current_size ;;
  }

  dimension: current_transaction_profile {
    type: string
    sql: ${TABLE}.current_transaction_profile ;;
  }

  dimension: debit_cnp {
    type: number
    sql: ${TABLE}.debit_cnp ;;
  }

  dimension: debit_cp {
    type: number
    sql: ${TABLE}.debit_cp ;;
  }

  dimension_group: first_settlement {
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
    sql: ${TABLE}.first_settlement_date ;;
  }

  dimension_group: first_transaction {
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
    sql: ${TABLE}.first_transaction_date ;;
  }

  dimension_group: first_visit {
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
    sql: ${TABLE}.first_visit_date ;;
  }

  dimension: funnel_stage {
    type: string
    sql: ${TABLE}.funnel_stage ;;
  }

  dimension: gift_vouchers_in_services {
    type: yesno
    sql: ${TABLE}.gift_vouchers_in_services ;;
  }

  dimension: go_readers {
    type: number
    sql: ${TABLE}.go_readers ;;
  }

  dimension: has_transacted {
    type: yesno
    sql: ${TABLE}.has_transacted ;;
  }

  dimension: industry_l1 {
    type: string
    sql: ${TABLE}.industry_l1 ;;
  }

  dimension: industry_l2 {
    type: string
    sql: ${TABLE}.industry_l2 ;;
  }

  dimension: industry_l3 {
    type: string
    sql: ${TABLE}.industry_l3 ;;
  }

  dimension: industry_segmentation {
    type: string
    sql: ${TABLE}.industry_segmentation ;;
  }

  dimension: integration {
    type: string
    sql: ${TABLE}.integration ;;
  }

  dimension: intended_product {
    type: string
    sql: ${TABLE}.intended_product ;;
  }

  dimension: is_activated {
    type: yesno
    sql: ${TABLE}.is_activated ;;
  }

  dimension: is_business_won {
    type: yesno
    sql: ${TABLE}.is_business_won ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: is_demo_account {
    type: yesno
    sql: ${TABLE}.is_demo_account ;;
  }

  dimension: is_key_account {
    type: yesno
    sql: ${TABLE}.is_key_account ;;
  }

  dimension: is_lead {
    type: yesno
    sql: ${TABLE}.is_lead ;;
  }

  dimension: is_merchant {
    type: yesno
    sql: ${TABLE}.is_merchant ;;
  }

  dimension: is_opportunity {
    type: yesno
    sql: ${TABLE}.is_opportunity ;;
  }

  dimension: is_settled {
    type: yesno
    sql: ${TABLE}.is_settled ;;
  }

  dimension: is_signup_complete {
    type: yesno
    sql: ${TABLE}.is_signup_complete ;;
  }

  dimension: is_test_account {
    type: yesno
    sql: ${TABLE}.is_test_account ;;
  }

  dimension: key_account_manager {
    type: string
    sql: ${TABLE}.key_account_manager ;;
  }

  dimension: khumo_readers {
    type: number
    sql: ${TABLE}.khumo_readers ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension_group: lead {
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
    sql: ${TABLE}.lead_date ;;
  }

  dimension: lite_readers {
    type: number
    sql: ${TABLE}.lite_readers ;;
  }

  dimension: location_classification {
    type: string
    sql: ${TABLE}.location_classification ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: merchant_bank {
    type: string
    sql: ${TABLE}.merchant_bank ;;
  }

  dimension: merchant_number {
    type: number
    sql: ${TABLE}.merchant_number ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_merchant_number {
    type: sum
    sql: ${merchant_number} ;;
  }

  measure: average_merchant_number {
    type: average
    sql: ${merchant_number} ;;
  }

  dimension: neo_readers {
    type: number
    sql: ${TABLE}.neo_readers ;;
  }

  dimension_group: opportunity {
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
    sql: ${TABLE}.opportunity_date ;;
  }

  dimension: owner_email {
    type: string
    sql: ${TABLE}.owner_email ;;
  }

  dimension: owner_first_name {
    type: string
    sql: ${TABLE}.owner_first_name ;;
  }

  dimension: owner_last_name {
    type: string
    sql: ${TABLE}.owner_last_name ;;
  }

  dimension: owner_mobile {
    type: string
    sql: ${TABLE}.owner_mobile ;;
  }

  dimension: owner_nationality {
    type: string
    sql: ${TABLE}.owner_nationality ;;
  }

  dimension: owner_uuid {
    type: string
    sql: ${TABLE}.owner_uuid ;;
  }

  dimension: payment_request_in_services {
    type: yesno
    sql: ${TABLE}.payment_request_in_services ;;
  }

  dimension: previously_accepted_card {
    type: yesno
    sql: ${TABLE}.previously_accepted_card ;;
  }

  dimension: primary_service {
    type: string
    sql: ${TABLE}.primary_service ;;
  }

  dimension: pro_readers {
    type: number
    sql: ${TABLE}.pro_readers ;;
  }

  dimension: processed_1k {
    type: yesno
    sql: ${TABLE}.processed_1k ;;
  }

  dimension_group: processed_1k {
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
    sql: ${TABLE}.processed_1k_date ;;
  }

  dimension: promo_code {
    type: string
    sql: ${TABLE}.promo_code ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}.province ;;
  }

  dimension: qr_in_services {
    type: yesno
    sql: ${TABLE}.qr_in_services ;;
  }

  dimension: reader_transferred_from {
    type: string
    sql: ${TABLE}.reader_transferred_from ;;
  }

  dimension: reader_type {
    type: string
    sql: ${TABLE}.reader_type ;;
  }

  dimension: referral_code {
    type: string
    sql: ${TABLE}.referral_code ;;
  }

  dimension: referrer_business {
    type: string
    sql: ${TABLE}.referrer_business ;;
  }

  dimension: reseller_name {
    type: string
    sql: ${TABLE}.reseller_name ;;
  }

  dimension: reseller_type {
    type: string
    sql: ${TABLE}.reseller_type ;;
  }

  dimension: retail_location {
    type: string
    sql: ${TABLE}.retail_location ;;
  }

  dimension: risk_status {
    type: string
    sql: ${TABLE}.risk_status ;;
  }

  dimension: sale_type {
    type: string
    sql: ${TABLE}.sale_type ;;
  }

  dimension: services {
    type: string
    sql: ${TABLE}.services ;;
  }

  dimension_group: signup_complete {
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
    sql: ${TABLE}.signup_complete_date ;;
  }

  dimension: signup_reader {
    type: string
    sql: ${TABLE}.signup_reader ;;
  }

  dimension: trading_name {
    type: string
    sql: ${TABLE}.trading_name ;;
  }

  dimension: vetting_state {
    type: string
    sql: ${TABLE}.vetting_state ;;
  }

  dimension: website_in_services {
    type: yesno
    sql: ${TABLE}.website_in_services ;;
  }

  measure: count {
    type: count
    drill_fields: [trading_name, owner_first_name, owner_last_name, reseller_name]
  }
}
