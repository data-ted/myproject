# The name of this view in Looker is "Monthly Eft Fees"
view: monthly_eft_fees {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.monthly_eft_fees ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Eft Credits Performed" in Explore.

  dimension: eft_credits_performed {
    type: number
    sql: ${TABLE}.eft_credits_performed ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_eft_credits_performed {
    type: sum
    sql: ${eft_credits_performed} ;;
  }

  measure: average_eft_credits_performed {
    type: average
    sql: ${eft_credits_performed} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: month {
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
    sql: ${TABLE}.month ;;
  }

  dimension: total_eft_costs_excl_vat {
    type: number
    sql: ${TABLE}.total_eft_costs_excl_vat ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
