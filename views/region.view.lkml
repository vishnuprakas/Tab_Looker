view: region {
  sql_table_name: `Tableau_Looker_Func.Region` ;;
  drill_fields: [region_id]

  dimension: region_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Region_Id ;;
  }
  dimension: region_name {
    type: string
    sql: ${TABLE}.Region_Name ;;
  }
  measure: count {
    type: count
    drill_fields: [region_id, region_name]
  }
}
