# The name of this view in Looker is "V Business Category"
view: v_business_category {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_business_category ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Business Uuid" in Explore.

  dimension: business_uuid {
    type: string
    sql: ${TABLE}.business_uuid ;;
  }

  dimension: mcc_code {
    type: string
    sql: ${TABLE}.mcc_code ;;
  }

  dimension: mcc_description {
    type: string
    sql: ${TABLE}.mcc_description ;;
  }

  dimension: mcc_group {
    type: string
    sql: ${TABLE}.mcc_group ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: pos_usage_profile {
    type: string
    sql: ${TABLE}.pos_usage_profile ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
