- dashboard: students_dashboard
  preferred_viewer: dashboards-next
  title: "Students Performance"
  description: "Dashboard showing student performance based on class, HW, Quize and Test"
  enable_viz_full_screen: true
  layout: grid
  elements:
    - type: looker_grid
      name: "student_performance_table"
      title: "Student Performance Table"
      explore: students
      fields: [students.name, students.class, students.hw_1, students.quize_1, students.test_1]
      filters: {}
      sorts: [students.name]
      limit: 500
      row: 0
      col: 0
      width: 12
      height: 8

  filters:
    - name: student_name_filter
      title: "Student Name"
      type: field_filter
      model: poc
      explore: students
      field: students.name
      allow_multiple_values: true
      required: false
      ui_config:
        type: tag_list
        display: inline

  crossfilter_enabled: true
