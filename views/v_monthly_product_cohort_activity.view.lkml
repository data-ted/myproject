# The name of this view in Looker is "V Monthly Product Cohort Activity"
view: v_monthly_product_cohort_activity {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_monthly_product_cohort_activity ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Active" in Explore.

  dimension: active {
    type: number
    sql: ${TABLE}.active ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_active {
    type: sum
    sql: ${active} ;;
  }

  measure: average_active {
    type: average
    sql: ${active} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: activity_month {
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
    sql: ${TABLE}.activity_month ;;
  }

  dimension: churn_rate {
    type: number
    sql: ${TABLE}.churn_rate ;;
  }

  dimension: churned {
    type: number
    sql: ${TABLE}.churned ;;
  }

  dimension_group: cohort_month {
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
    sql: ${TABLE}.cohort_month ;;
  }

  dimension: inactive {
    type: number
    sql: ${TABLE}.inactive ;;
  }

  dimension: months_with_yoco {
    type: number
    sql: ${TABLE}.months_with_yoco ;;
  }

  dimension: never {
    type: number
    sql: ${TABLE}.never ;;
  }

  dimension: new_active {
    type: number
    sql: ${TABLE}.new_active ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: proportion_of_all_actives {
    type: number
    sql: ${TABLE}.proportion_of_all_actives ;;
  }

  dimension: proportion_of_all_inactives {
    type: number
    sql: ${TABLE}.proportion_of_all_inactives ;;
  }

  dimension: proportion_of_total_merchants {
    type: number
    sql: ${TABLE}.proportion_of_total_merchants ;;
  }

  dimension: reactivated {
    type: number
    sql: ${TABLE}.reactivated ;;
  }

  dimension: reactivation_rate {
    type: number
    sql: ${TABLE}.reactivation_rate ;;
  }

  dimension: retained {
    type: number
    sql: ${TABLE}.retained ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
