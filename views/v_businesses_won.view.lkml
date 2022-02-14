# The name of this view in Looker is "V Businesses Won"
view: v_businesses_won {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_businesses_won ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Admin Link" in Explore.

  dimension: admin_link {
    type: string
    sql: ${TABLE}.admin_link ;;
  }

  dimension: audit_id {
    type: number
    sql: ${TABLE}.audit_id ;;
  }

  dimension: bank_merchant_identifier {
    type: string
    sql: ${TABLE}.bank_merchant_identifier ;;
  }

  dimension: business_status {
    type: string
    sql: ${TABLE}.business_status ;;
  }

  dimension: business_uuid {
    type: string
    sql: ${TABLE}.business_uuid ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: company_type {
    type: string
    sql: ${TABLE}.company_type ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}.deleted ;;
  }

  dimension: eft_identifier {
    type: string
    sql: ${TABLE}.eft_identifier ;;
  }

  dimension_group: hist_execution {
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
    sql: ${TABLE}.hist_execution_date ;;
  }

  dimension: hist_id {
    type: number
    sql: ${TABLE}.hist_id ;;
  }

  dimension_group: hist_recreate_land {
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
    sql: ${TABLE}.hist_recreate_land_time ;;
  }

  dimension: intended_product {
    type: string
    sql: ${TABLE}.intended_product ;;
  }

  dimension: is_demo_account {
    type: yesno
    sql: ${TABLE}.is_demo_account ;;
  }

  dimension: key_account {
    type: yesno
    sql: ${TABLE}.key_account ;;
  }

  dimension: keyaccmgr {
    type: string
    sql: ${TABLE}.keyaccmgr ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: life_cycle_stage {
    type: string
    sql: ${TABLE}.life_cycle_stage ;;
  }

  dimension: localisation_uuid {
    type: string
    sql: ${TABLE}.localisation_uuid ;;
  }

  dimension: mcc_description {
    type: string
    sql: ${TABLE}.mcc_description ;;
  }

  dimension: mcc_group {
    type: string
    sql: ${TABLE}.mcc_group ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: new_to_card {
    type: string
    sql: ${TABLE}.new_to_card ;;
  }

  dimension: owner_uuid {
    type: string
    sql: ${TABLE}.owner_uuid ;;
  }

  dimension: payout_processing_bank {
    type: string
    sql: ${TABLE}.payout_processing_bank ;;
  }

  dimension: pos_usage_profile {
    type: string
    sql: ${TABLE}.pos_usage_profile ;;
  }

  dimension: pricing_adjustments {
    type: string
    sql: ${TABLE}.pricing_adjustments ;;
  }

  dimension: pricing_structure_identifier {
    type: string
    sql: ${TABLE}.pricing_structure_identifier ;;
  }

  dimension: promo_code {
    type: string
    sql: ${TABLE}.promo_code ;;
  }

  dimension: raw_link {
    type: string
    sql: ${TABLE}.raw_link ;;
  }

  dimension: risk_reason {
    type: string
    sql: ${TABLE}.risk_reason ;;
  }

  dimension: risk_state {
    type: string
    sql: ${TABLE}.risk_state ;;
  }

  dimension: row_deleted {
    type: yesno
    sql: ${TABLE}.row_deleted ;;
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

  dimension: settlement_activated {
    type: yesno
    sql: ${TABLE}.settlement_activated ;;
  }

  dimension: status_reason {
    type: string
    sql: ${TABLE}.status_reason ;;
  }

  dimension: swipe_and_sign_disabled {
    type: yesno
    sql: ${TABLE}.swipe_and_sign_disabled ;;
  }

  dimension: timezone_id {
    type: string
    sql: ${TABLE}.timezone_id ;;
  }

  dimension: trading_name {
    type: string
    sql: ${TABLE}.trading_name ;;
  }

  dimension: transactions_disabled {
    type: yesno
    sql: ${TABLE}.transactions_disabled ;;
  }

  dimension: updated_by_uuid {
    type: string
    sql: ${TABLE}.updated_by_uuid ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  dimension: vetting_state {
    type: string
    sql: ${TABLE}.vetting_state ;;
  }

  dimension: where_did_you_hear {
    type: string
    sql: ${TABLE}.where_did_you_hear ;;
  }

  dimension_group: won {
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
    sql: ${TABLE}.won_date ;;
  }

  dimension_group: won_datetime {
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
    sql: ${TABLE}.won_datetime ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, trading_name]
  }
}
