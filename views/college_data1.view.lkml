view: college_data1 {
  sql_table_name: `elastic-pocs.school.college_data1` ;;

  dimension: degree {
    type: string
    sql: ${TABLE}.degree ;;
  }
  dimension: name {
    hidden: yes
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }
  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }
  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }
}
