connection: "tab_looker_conn"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: tab_looker_proj_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: tab_looker_proj_default_datagroup

explore: region {
  #required_access_grants: [fsp]
  label: "Region"
  #view_label: "WS2 Group Users G1 Latest Metadata"

  access_filter: {
    field: region.region_name
    user_attribute: region_pdp_test
  }

  join: sales {
    type: left_outer
    relationship: many_to_one
    sql_on: ${region.region_id}=${sales.reg_id} ;;
  }
}
