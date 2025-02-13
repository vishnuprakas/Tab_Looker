- dashboard: students
  title: Students
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: AwdJ3sB9HRAk6UEI1U3lYa
  elements:
  - title: Students
    name: Students
    model: tableau_looker
    explore: students
    type: table
    fields: [students.name, students.class, students.hw_1, students.quize_1, students.test_1]
    sorts: [students.name]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 8
