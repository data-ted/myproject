# The name of this view in Looker is "V Acquisition Funnel"
view: v_acquisition_funnel {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_acquisition_funnel ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Accounts" in Explore.

  dimension: accounts {
    type: number
    sql: ${TABLE}.accounts ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_accounts {
    type: sum
    sql: ${accounts} ;;
  }

  measure: average_accounts {
    type: average
    sql: ${accounts} ;;
  }

  dimension: acquisition_channel {
    type: string
    sql: ${TABLE}.acquisition_channel ;;
  }

  dimension: activated {
    type: number
    sql: ${TABLE}.activated ;;
  }

  dimension: bwons {
    type: number
    sql: ${TABLE}.bwons ;;
  }

  dimension: digital_spend {
    type: number
    sql: ${TABLE}.digital_spend ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: funnel {
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
    sql: ${TABLE}.funnel_date ;;
  }

  dimension: go_readers {
    type: number
    sql: ${TABLE}.go_readers ;;
  }

  dimension: intended_product {
    type: string
    sql: ${TABLE}.intended_product ;;
  }

  dimension: is_testandlearn_campaign {
    type: yesno
    sql: ${TABLE}.is_testandlearn_campaign ;;
  }

  dimension: khumo_readers {
    type: number
    sql: ${TABLE}.khumo_readers ;;
  }

  dimension: leads {
    type: number
    sql: ${TABLE}.leads ;;
  }

  dimension: lite_readers {
    type: number
    sql: ${TABLE}.lite_readers ;;
  }

  dimension: neo_readers {
    type: number
    sql: ${TABLE}.neo_readers ;;
  }

  dimension: new_unique_visitors {
    type: number
    sql: ${TABLE}.new_unique_visitors ;;
  }

  dimension: opps {
    type: number
    sql: ${TABLE}.opps ;;
  }

  dimension: pro_readers {
    type: number
    sql: ${TABLE}.pro_readers ;;
  }

  dimension: prospects {
    type: number
    sql: ${TABLE}.prospects ;;
  }

  dimension: settled {
    type: number
    sql: ${TABLE}.settled ;;
  }

  dimension: starters {
    type: number
    sql: ${TABLE}.starters ;;
  }

  dimension: website_sessions {
    type: number
    sql: ${TABLE}.website_sessions ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
