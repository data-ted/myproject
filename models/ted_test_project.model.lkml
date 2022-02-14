# Define the database connection to be used for this model.
connection: "yoco_data_warehouse"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: ted_test_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ted_test_project_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Ted Test Project"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: acquisition_funnel {}

explore: business_category {}

explore: business_primary_location {}

explore: business_primary_ward {}

explore: businesses_won {}

explore: customer_surveys {}

explore: daily_active_merchant_detail {}

explore: daily_payment_product_metrics {}

explore: daily_tpv_industry_province {}

explore: devices {}

explore: hardware_devices {}

explore: interchange_fees {}

explore: key_accounts {}

explore: leadership_ops_monthly {}

explore: leadership_ops_weekly {}

explore: leadership_sales_monthly {}

explore: leadership_sales_weekly {}

explore: merchant_addresses {}

explore: merchant_monthly_profile {}

explore: merchant_weekly_profile {}

explore: merchants {}

explore: milestones {}

explore: milestones_with_demos {}

explore: modified_outbound_settlements {}

explore: monthly_acquirer_fees {}

explore: monthly_eft_fees {}

explore: monthly_product_cohort_activity {}

explore: monthly_sms_fees {}

explore: monthly_transaction_metrics_bw {}

explore: operations {}

explore: operations_definitions {}

explore: order_headers {}

explore: order_line_items {}

explore: orders_at_item_level {}

explore: orders_milestones {}

explore: payworks_fees {}

explore: raw_order_headers {}

explore: reader_transfers {}

explore: salesforce_deepdive {}

explore: salesperson_email {}

explore: scheme_fees {}

explore: segments {}

explore: signups_summary {}

explore: transaction_costs {}

explore: transaction_fees_costs {}

explore: transactions {}

explore: txn_summary {}

explore: user_info {}

explore: zendesk_tickets {}

explore: v_segments {}

explore: v_user_info {}

explore: v_orders_milestones {}

explore: v_transaction_fees_costs {}

explore: v_milestones_with_demos {}

explore: v_txn_summary {}

explore: v_hardware_devices {}

explore: v_monthly_transaction_metrics_bw {}

explore: v_milestones {}

explore: v_merchant_addresses {}

explore: v_monthly_acquirer_fees {}

explore: v_leadership_sales_weekly {}

explore: v_payworks_fees {}

explore: v_merchants {}

explore: v_businesses_won {}

explore: v_zendesk_tickets {}

explore: v_business_primary_location {}

explore: v_operations {}

explore: v_transaction_costs {}

explore: v_acquisition_funnel {}

explore: v_reader_transfers {}

explore: v_orders_at_item_level {}

explore: v_monthly_eft_fees {}

explore: v_business_primary_ward {}

explore: v_modified_outbound_settlements {}

explore: v_monthly_sms_fees {}

explore: v_merchant_weekly_profile {}

explore: v_daily_active_merchant_detail {}

explore: v_daily_tpv_industry_province {}

explore: v_key_accounts {}

explore: v_leadership_ops_monthly {}

explore: v_scheme_fees {}

explore: v_monthly_product_cohort_activity {}

explore: v_merchant_monthly_profile {}

explore: v_customer_surveys {}

explore: v_transactions {}

explore: v_interchange_fees {}

explore: v_salesperson_email {}

explore: v_daily_payment_product_metrics {}

explore: v_order_headers {}

explore: v_raw_order_headers {}

explore: v_devices {
  join: devices {
    type: left_outer
    sql_on: ${v_devices.device_id} = ${devices.device_id} ;;
    relationship: many_to_one
  }
}

explore: v_leadership_ops_weekly {}

explore: v_salesforce_deepdive {}

explore: v_operations_definitions {}

explore: v_leadership_sales_monthly {}

explore: v_business_category {}

explore: v_signups_summary {}
