- dashboard: indicator_correlation_dashboard
  title: Indicator Correlation Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: rHNc3f27y6XyNnL5dUU8mH
  elements:
  - title: Total Matched Indicators
    name: Total Matched Indicators
    model: teamcymru_scout_dashboards
    explore: correlation_dashboard_query
    type: single_value
    fields: [count_of_indicator]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: correlation_dashboard_query.indicator
      expression: ''
      label: Count of Indicator
      measure: count_of_indicator
      type: count_distinct
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Indicator Type: correlation_dashboard_query.indicator_type
    row: 0
    col: 0
    width: 12
    height: 6
  - title: Matched Indicators by Type
    name: Matched Indicators by Type
    model: teamcymru_scout_dashboards
    explore: correlation_dashboard_query
    type: looker_pie
    fields: [count_of_indicator, correlation_dashboard_query.indicator_type]
    sorts: [count_of_indicator desc 0]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: correlation_dashboard_query.indicator
      expression: ''
      label: Count of Indicator
      measure: count_of_indicator
      type: count_distinct
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Indicator Type: correlation_dashboard_query.indicator_type
    row: 0
    col: 12
    width: 12
    height: 6
  - title: Matched Indicators Details
    name: Matched Indicators Details
    model: teamcymru_scout_dashboards
    explore: correlation_dashboard_query
    type: looker_grid
    fields: [correlation_dashboard_query.indicator_type, correlation_dashboard_query.indicator,
      correlation_dashboard_query.count, correlation_dashboard_query.correlation_log_type,
      correlation_dashboard_query.last_match_time_time]
    sorts: [correlation_dashboard_query.last_match_time_time desc]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      correlation_dashboard_query.last_match_time_time: Last Match Time (UTC)
    defaults_version: 1
    listen:
      Indicator Type: correlation_dashboard_query.indicator_type
    row: 6
    col: 0
    width: 24
    height: 7
  filters:
  - name: Indicator Type
    title: Indicator Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: teamcymru_scout_dashboards
    explore: correlation_dashboard_query
    listens_to_filters: []
    field: correlation_dashboard_query.indicator_type
