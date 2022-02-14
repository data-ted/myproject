# The name of this view in Looker is "Leadership Sales Monthly"
view: leadership_sales_monthly {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.leadership_sales_monthly ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dimension" in Explore.

  dimension: dimension {
    type: string
    sql: ${TABLE}.dimension ;;
  }

  dimension: dimension_value {
    type: string
    sql: ${TABLE}.dimension_value ;;
  }

  dimension: kpi_title {
    type: string
    sql: ${TABLE}.kpi_title ;;
  }

  dimension: kpi_value {
    type: number
    sql: ${TABLE}.kpi_value ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_kpi_value {
    type: sum
    sql: ${kpi_value} ;;
  }

  measure: average_kpi_value {
    type: average
    sql: ${kpi_value} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: month {
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
    sql: ${TABLE}.month ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
