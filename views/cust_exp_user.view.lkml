# The name of this view in Looker is "Cust Exp User"
view: cust_exp_user {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.cust_exp_user ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Account Tier" in Explore.

  dimension: account_tier {
    type: string
    sql: ${TABLE}."account_tier" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."region" ;;
  }

  dimension: user_info {
    type: string
    sql: ${TABLE}."user_info" ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}."user_type" ;;
  }

  dimension: userid {
    type: string
    primary_key: yes
    sql: ${TABLE}."userid" ;;
  }
  measure: count {
    type: count
  }

  measure: priority_user_count {
    type:  count
    filters: [cust_exp_region.is_priority_region: "yes"]
  }

}
