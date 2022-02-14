# The name of this view in Looker is "Transaction Costs"
view: transaction_costs {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.transaction_costs ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bank Cost" in Explore.

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

  dimension: cybersource_3d_cost {
    type: number
    sql: ${TABLE}.cybersource_3d_cost ;;
  }

  dimension: cybersource_3d_cost_usd {
    type: number
    sql: ${TABLE}.cybersource_3d_cost_usd ;;
  }

  dimension: cybersource_auth_cost {
    type: number
    sql: ${TABLE}.cybersource_auth_cost ;;
  }

  dimension: cybersource_auth_cost_usd {
    type: number
    sql: ${TABLE}.cybersource_auth_cost_usd ;;
  }

  dimension: diarize_me_zar {
    type: number
    sql: ${TABLE}.diarize_me_zar ;;
  }

  dimension: ecentric_fixed_cost {
    type: number
    sql: ${TABLE}.ecentric_fixed_cost ;;
  }

  dimension: ecentric_tier_cost {
    type: number
    sql: ${TABLE}.ecentric_tier_cost ;;
  }

  dimension: eft_cost {
    type: number
    sql: ${TABLE}.eft_cost ;;
  }

  dimension: interchange_cost {
    type: number
    sql: ${TABLE}.interchange_cost ;;
  }

  dimension: lightspeed_zar {
    type: number
    sql: ${TABLE}.lightspeed_zar ;;
  }

  dimension: loyverse_zar {
    type: number
    sql: ${TABLE}.loyverse_zar ;;
  }

  dimension: neo_data_cost {
    type: number
    sql: ${TABLE}.neo_data_cost ;;
  }

  dimension: ono_rev_share_cost {
    type: number
    sql: ${TABLE}.ono_rev_share_cost ;;
  }

  dimension: ono_switch_cost {
    type: number
    sql: ${TABLE}.ono_switch_cost ;;
  }

  dimension: payworks_perc_cost {
    type: number
    sql: ${TABLE}.payworks_perc_cost ;;
  }

  dimension: payworks_tier_cost {
    type: number
    sql: ${TABLE}.payworks_tier_cost ;;
  }

  dimension: payworks_tier_eur {
    type: number
    sql: ${TABLE}.payworks_tier_eur ;;
  }

  dimension: processing_bank {
    type: string
    sql: ${TABLE}.processing_bank ;;
  }

  dimension: sms_receipt_cost {
    type: number
    sql: ${TABLE}.sms_receipt_cost ;;
  }

  dimension: total_cost_excl_ono {
    type: number
    sql: ${TABLE}.total_cost_excl_ono ;;
  }

  dimension: total_cost_incl_ono {
    type: number
    sql: ${TABLE}.total_cost_incl_ono ;;
  }

  dimension: transaction_uuid {
    type: string
    sql: ${TABLE}.transaction_uuid ;;
  }

  dimension: vend_zar {
    type: number
    sql: ${TABLE}.vend_zar ;;
  }

  dimension: wix_royalty_cost {
    type: number
    sql: ${TABLE}.wix_royalty_cost ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
