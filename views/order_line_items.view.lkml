# The name of this view in Looker is "Order Line Items"
view: order_line_items {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.order_line_items ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

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

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Identifier" in Explore.

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: line_item_no {
    type: number
    sql: ${TABLE}.line_item_no ;;
  }

  dimension: order_uuid {
    type: string
    sql: ${TABLE}.order_uuid ;;
  }

  dimension: price_per_unit {
    type: number
    sql: ${TABLE}.price_per_unit ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_price_per_unit {
    type: sum
    sql: ${price_per_unit} ;;
  }

  measure: average_price_per_unit {
    type: average
    sql: ${price_per_unit} ;;
  }

  dimension: promo_discount_per_unit {
    type: number
    sql: ${TABLE}.promo_discount_per_unit ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: tax_percentage {
    type: number
    sql: ${TABLE}.tax_percentage ;;
  }

  dimension: total_line_items {
    type: number
    sql: ${TABLE}.total_line_items ;;
  }

  dimension: total_price {
    type: number
    sql: ${TABLE}.total_price ;;
  }

  dimension: total_price_including_tax {
    type: number
    sql: ${TABLE}.total_price_including_tax ;;
  }

  dimension: total_promo_discount {
    type: number
    sql: ${TABLE}.total_promo_discount ;;
  }

  dimension: total_tax_amount {
    type: number
    sql: ${TABLE}.total_tax_amount ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
