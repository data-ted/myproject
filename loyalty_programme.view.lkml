view: loyalty_programme {
  # # You can specify the table name if it's different from the view name:
  sql_table_name: loyalty_programme.tester ;;
  #
  # # Define your dimensions and measures here, like this:
   dimension: industry_segmentation {
     description: "Merchant Industry Segmeation"
     type: string
     sql: ${TABLE}.industry_segmentation ;;
   }

   dimension: location_classification {
     description: "Merchant Location Segmeation"
     type: number
     sql: ${TABLE}.location_classification ;;
   }

   dimension_group: date {
     description: "The date when each user transacted"
     type: time
     timeframes: [month, year]
     sql: ${TABLE}.timestamp_local ;;
   }
  #
   measure: has_transacted{
     description: "Use this for counting lifetime orders across many users"
     type: yesno
     sql: ${TABLE}.has_transacted ;;
   }
}

# view: loyalty_programme {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
