# The name of this view in Looker is "Transaction Fees Costs"
view: transaction_fees_costs {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.transaction_fees_costs ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acquirer Route" in Explore.

  dimension: acquirer_route {
    type: string
    sql: ${TABLE}.acquirer_route ;;
  }

  dimension: bank_cost {
    type: number
    sql: ${TABLE}.bank_cost ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_bank_cost {
    type: sum
    sql: ${bank_cost} ;;
  }

  measure: average_bank_cost {
    type: average
    sql: ${bank_cost} ;;
  }

  dimension: bank_fees_perc {
    type: number
    sql: ${TABLE}.bank_fees_perc ;;
  }

  dimension: card_international {
    type: yesno
    sql: ${TABLE}.card_international ;;
  }

  dimension: card_type {
    type: string
    sql: ${TABLE}.card_type ;;
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

  dimension: cybersource_3d_zar {
    type: number
    sql: ${TABLE}.cybersource_3d_zar ;;
  }

  dimension: cybersource_auth_zar {
    type: number
    sql: ${TABLE}.cybersource_auth_zar ;;
  }

  dimension: ecentric_fixed_zar {
    type: number
    sql: ${TABLE}.ecentric_fixed_zar ;;
  }

  dimension: ecentric_tier_zar {
    type: number
    sql: ${TABLE}.ecentric_tier_zar ;;
  }

  dimension: eft_cost_zar {
    type: number
    sql: ${TABLE}.eft_cost_zar ;;
  }

  dimension: fee_amount {
    type: number
    sql: ${TABLE}.fee_amount ;;
  }

  dimension: fee_ex_vat_amount {
    type: number
    sql: ${TABLE}.fee_ex_vat_amount ;;
  }

  dimension: fee_tax_amount {
    type: number
    sql: ${TABLE}.fee_tax_amount ;;
  }

  dimension: interchange_cost {
    type: number
    sql: ${TABLE}.interchange_cost ;;
  }

  dimension: interchange_fees_perc {
    type: number
    sql: ${TABLE}.interchange_fees_perc ;;
  }

  dimension: neo_data_zar {
    type: number
    sql: ${TABLE}.neo_data_zar ;;
  }

  dimension: ono_perc_zar {
    type: number
    sql: ${TABLE}.ono_perc_zar ;;
  }

  dimension: partner_royalty_cost {
    type: number
    sql: ${TABLE}.partner_royalty_cost ;;
  }

  dimension: partner_royalty_zar {
    type: number
    sql: ${TABLE}.partner_royalty_zar ;;
  }

  dimension: payment_channel {
    type: string
    sql: ${TABLE}.payment_channel ;;
  }

  dimension: payment_processor {
    type: string
    sql: ${TABLE}.payment_processor ;;
  }

  dimension: payment_product {
    type: string
    sql: ${TABLE}.payment_product ;;
  }

  dimension: payworks_perc_cost {
    type: number
    sql: ${TABLE}.payworks_perc_cost ;;
  }

  dimension: payworks_tier_zar {
    type: number
    sql: ${TABLE}.payworks_tier_zar ;;
  }

  dimension: processing_bank {
    type: string
    sql: ${TABLE}.processing_bank ;;
  }

  dimension: reader_name {
    type: string
    sql: ${TABLE}.reader_name ;;
  }

  dimension: reader_uuid {
    type: string
    sql: ${TABLE}.reader_uuid ;;
  }

  dimension: scheme {
    type: string
    sql: ${TABLE}.scheme ;;
  }

  dimension: sms_receipt_zar {
    type: number
    sql: ${TABLE}.sms_receipt_zar ;;
  }

  dimension: total_cost {
    type: number
    sql: ${TABLE}.total_cost ;;
  }

  dimension: total_cost_ver_2 {
    type: number
    sql: ${TABLE}.total_cost_ver_2 ;;
  }

  dimension: transaction_amount {
    type: number
    sql: ${TABLE}.transaction_amount ;;
  }

  dimension: transaction_state {
    type: string
    sql: ${TABLE}.transaction_state ;;
  }

  dimension: transaction_uuid {
    type: string
    sql: ${TABLE}.transaction_uuid ;;
  }

  dimension: vgs_secops_zar {
    type: number
    sql: ${TABLE}.vgs_secops_zar ;;
  }

  measure: count {
    type: count
    drill_fields: [reader_name]
  }
}
