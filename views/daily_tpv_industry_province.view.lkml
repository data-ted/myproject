# The name of this view in Looker is "Daily Tpv Industry Province"
view: daily_tpv_industry_province {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.daily_tpv_industry_province ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Daily Active Merchants" in Explore.

  dimension: daily_active_merchants {
    type: number
    sql: ${TABLE}.daily_active_merchants ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_daily_active_merchants {
    type: sum
    sql: ${daily_active_merchants} ;;
  }

  measure: average_daily_active_merchants {
    type: average
    sql: ${daily_active_merchants} ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.industry ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: month_cohort {
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
    sql: ${TABLE}.month_cohort ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}.province ;;
  }

  dimension: sub_industry {
    type: string
    sql: ${TABLE}.sub_industry ;;
  }

  dimension: tpv {
    type: number
    sql: ${TABLE}.tpv ;;
  }

  dimension: transaction_count {
    type: number
    sql: ${TABLE}.transaction_count ;;
  }

  dimension_group: transaction {
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
    sql: ${TABLE}.transaction_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
