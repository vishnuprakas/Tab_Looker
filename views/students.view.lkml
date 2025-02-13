view: students {
  sql_table_name: `elastic-pocs.school.students` ;;

  measure: class {
    type: sum
    sql: ${TABLE}.Class ;;
    value_format: "#.00"
  }
  measure: hw_1 {
    type: sum
    sql: ${TABLE}.HW_1 ;;
    value_format: "#.00"
  }
  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }
  measure: quize_1 {
    type: sum
    sql: ${TABLE}.QUIZE_1 ;;
    value_format: "#.00"
  }
  measure: test_1 {
    type: sum
    sql: ${TABLE}.TEST_1 ;;
    value_format: "#.00"
  }
}
