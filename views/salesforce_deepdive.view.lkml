# The name of this view in Looker is "Salesforce Deepdive"
view: salesforce_deepdive {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.salesforce_deepdive ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Adwords Spend" in Explore.

  dimension: adwords_spend {
    type: number
    sql: ${TABLE}.adwords_spend ;;
  }

  dimension: b_won {
    type: number
    sql: ${TABLE}.b_won ;;
  }

  dimension: determinant {
    type: string
    sql: ${TABLE}.determinant ;;
  }

  dimension: discount_total {
    type: number
    sql: ${TABLE}.discount_total ;;
  }

  dimension: fb_spend {
    type: number
    sql: ${TABLE}.fb_spend ;;
  }

  dimension: lead_b_won_conversion {
    type: number
    sql: ${TABLE}.lead_b_won_conversion ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_lead_b_won_conversion {
    type: sum
    sql: ${lead_b_won_conversion} ;;
  }

  measure: average_lead_b_won_conversion {
    type: average
    sql: ${lead_b_won_conversion} ;;
  }

  dimension: lead_opportunity_conversion {
    type: number
    sql: ${TABLE}.lead_opportunity_conversion ;;
  }

  dimension: leads {
    type: number
    sql: ${TABLE}.leads ;;
  }

  dimension: opportunities {
    type: number
    sql: ${TABLE}.opportunities ;;
  }

  dimension: opportunity_b_won_conversion {
    type: number
    sql: ${TABLE}.opportunity_b_won_conversion ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: period_to {
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
    sql: ${TABLE}.period_to ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sale_location {
    type: string
    sql: ${TABLE}.sale_location ;;
  }

  dimension: total_spend {
    type: number
    sql: ${TABLE}.total_spend ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
