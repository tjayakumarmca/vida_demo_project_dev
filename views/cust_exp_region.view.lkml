# The name of this view in Looker is "Cust Exp Region"
view: cust_exp_region {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.cust_exp_region ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Abbreviation" in Explore.

  dimension: abbreviation {
    type: string
    primary_key: yes
    sql: ${TABLE}."abbreviation" ;;
  }

  dimension: column {
    type: string
    sql: ${TABLE}."column" ;;
  }

  dimension: regionid {
    type: string
    sql: ${TABLE}."regionid" ;;
  }

  dimension: row {
    type: string
    sql: ${TABLE}."row" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: is_priority_region {
    type: yesno
    sql:  ${TABLE}."state" IN ('Arizona', 'California', 'New York') ;;
  }

  measure: count {
    type: count
  }

}
