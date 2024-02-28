# Define the database connection to be used for this model.
connection: "vida-postgre-db-azure"

# include all the views
include: "/views/**/*.view.lkml"
#include: "/dashboards/**/*.dashboard.lookml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: vida_demo_project01_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "4 hour"
}

persist_with: vida_demo_project01_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Vida Ihub Demo Project01"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: cust_exp_survey {}

explore: cust_exp_user {
  join: cust_exp_region {
    type: left_outer
    sql_on: ${cust_exp_user.region} = ${cust_exp_region.abbreviation} ;;
    relationship: many_to_one
  }
}
