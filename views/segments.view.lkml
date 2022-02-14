# The name of this view in Looker is "Segments"
view: segments {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.segments ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Activity Rate" in Explore.

  dimension: activity_rate {
    type: number
    sql: ${TABLE}.activity_rate ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_activity_rate {
    type: sum
    sql: ${activity_rate} ;;
  }

  measure: average_activity_rate {
    type: average
    sql: ${activity_rate} ;;
  }

  dimension: average_monthly_vol {
    type: number
    sql: ${TABLE}.average_monthly_vol ;;
  }

  dimension: basket_size {
    type: number
    sql: ${TABLE}.basket_size ;;
  }

  dimension: basket_size_deviation {
    type: number
    sql: ${TABLE}.basket_size_deviation ;;
  }

  dimension: business_uuid {
    type: string
    sql: ${TABLE}.business_uuid ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: cohort {
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
    sql: ${TABLE}.cohort ;;
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

  dimension_group: last_txn {
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
    sql: ${TABLE}.last_txn ;;
  }

  dimension: life_cycle_stage {
    type: string
    sql: ${TABLE}.life_cycle_stage ;;
  }

  dimension: mcc_description {
    type: string
    sql: ${TABLE}.mcc_description ;;
  }

  dimension: mcc_group {
    type: string
    sql: ${TABLE}.mcc_group ;;
  }

  dimension: merchant_size {
    type: string
    sql: ${TABLE}.merchant_size ;;
  }

  dimension: merchant_size_summary {
    type: string
    sql: ${TABLE}.merchant_size_summary ;;
  }

  dimension: monthly_vol_deviation {
    type: number
    sql: ${TABLE}.monthly_vol_deviation ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ninety_day_vol {
    type: number
    sql: ${TABLE}.ninety_day_vol ;;
  }

  dimension: office_hours_proportion {
    type: number
    sql: ${TABLE}.office_hours_proportion ;;
  }

  dimension: thirty_day_vol {
    type: number
    sql: ${TABLE}.thirty_day_vol ;;
  }

  dimension: vetting_state {
    type: string
    sql: ${TABLE}.vetting_state ;;
  }

  dimension: weekend_volume_proportion {
    type: number
    sql: ${TABLE}.weekend_volume_proportion ;;
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

  measure: count {
    type: count
    drill_fields: [name]
  }
}
