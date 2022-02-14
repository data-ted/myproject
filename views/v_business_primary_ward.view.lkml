# The name of this view in Looker is "V Business Primary Ward"
view: v_business_primary_ward {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mv.v_business_primary_ward ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Business Uuid" in Explore.

  dimension: business_uuid {
    type: string
    sql: ${TABLE}.business_uuid ;;
  }

  dimension: district_minicipal_code {
    type: string
    sql: ${TABLE}.district_minicipal_code ;;
  }

  dimension: district_municipality {
    type: string
    sql: ${TABLE}.district_municipality ;;
  }

  dimension: km_from_yoco_parkhurst {
    type: number
    sql: ${TABLE}.km_from_yoco_parkhurst ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_km_from_yoco_parkhurst {
    type: sum
    sql: ${km_from_yoco_parkhurst} ;;
  }

  measure: average_km_from_yoco_parkhurst {
    type: average
    sql: ${km_from_yoco_parkhurst} ;;
  }

  dimension: km_from_yoco_shortmarket {
    type: number
    sql: ${TABLE}.km_from_yoco_shortmarket ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: local_municipality {
    type: string
    sql: ${TABLE}.local_municipality ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}.province ;;
  }

  dimension: province_code {
    type: string
    sql: ${TABLE}.province_code ;;
  }

  dimension: ward_id {
    type: number
    sql: ${TABLE}.ward_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
