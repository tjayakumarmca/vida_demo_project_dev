# The name of this view in Looker is "Insurance"
view: insurance {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.insurance ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Brand" in Explore.

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."channel" ;;
  }

  dimension: claimbot {
    type: string
    sql: ${TABLE}."claimbot" ;;
  }

  dimension: classification {
    type: string
    sql: ${TABLE}."classification" ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}."date" ;;
  }

  dimension: intentclass {
    type: string
    sql: ${TABLE}."intentclass" ;;
  }

  dimension: intentgroup {
    type: string
    sql: ${TABLE}."intentgroup" ;;
  }

  dimension: intentsegment {
    type: string
    sql: ${TABLE}."intentsegment" ;;
  }

  dimension: intentvalue {
    type: string
    sql: ${TABLE}."intentvalue" ;;
  }

  dimension: journey {
    type: string
    sql: ${TABLE}."journey" ;;
  }

  dimension: no_of_users {
    type: string
    sql: ${TABLE}."no_of_users" ;;
  }
  measure: count {
    type: count
  }
}
