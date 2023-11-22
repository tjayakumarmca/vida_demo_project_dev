# The name of this view in Looker is "Cust Exp Survey"
view: cust_exp_survey {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.cust_exp_survey ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ces" in Explore.

  dimension: ces {
    type: string
    sql: ${TABLE}."ces" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."channel" ;;
  }

  dimension: cohort {
    type: string
    sql: ${TABLE}."cohort" ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}."comments" ;;
  }

  dimension: csat {
    type: string
    sql: ${TABLE}."csat" ;;
  }

  dimension: customer_feedback {
    type: string
    sql: ${TABLE}."customer_feedback" ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}."date" ;;
  }

  dimension: journey_stage {
    type: string
    sql: ${TABLE}."journey_stage" ;;
  }

  dimension: nps {
    type: string
    sql: ${TABLE}."nps" ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}."product" ;;
  }

  dimension: response {
    type: string
    sql: ${TABLE}."response" ;;
  }

  dimension: survey_name {
    type: string
    sql: ${TABLE}."survey_name" ;;
  }

  dimension: surveyid {
    type: string
    primary_key: yes
    sql: ${TABLE}."surveyid" ;;
  }

  dimension: user_info {
    type: string
    sql: ${TABLE}."user_info" ;;
  }
  measure: count {
    type: count
    drill_fields: [survey_name]
  }
}
