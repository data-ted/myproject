# The name of this view in Looker is "Key Accounts"
view: key_accounts {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.key_accounts ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: became_key_account {
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
    sql: ${TABLE}.became_key_account ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Business Status" in Explore.

  dimension: business_status {
    type: string
    sql: ${TABLE}.business_status ;;
  }

  dimension: business_uuid {
    type: string
    sql: ${TABLE}.business_uuid ;;
  }

  dimension: current_key_account {
    type: string
    sql: ${TABLE}.current_key_account ;;
  }

  dimension: keyaccmgr {
    type: string
    sql: ${TABLE}.keyaccmgr ;;
  }

  dimension: keyaccmgr_uuid {
    type: string
    sql: ${TABLE}.keyaccmgr_uuid ;;
  }

  dimension_group: retired_key_account {
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
    sql: ${TABLE}.retired_key_account ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
