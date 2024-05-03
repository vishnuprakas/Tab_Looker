connection: "tab_looker_conn"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: tab_looker_proj_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: tab_looker_proj_default_datagroup

explore: region {}

explore: sales {}

