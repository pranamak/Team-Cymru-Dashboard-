- dashboard: account_usage_details
  title: Account Usage Details
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: CRgKoB33uVOLRWRVxhVo5w
  elements:
  - title: Account Usage Details
    name: Account Usage Details
    model: teamcymru_scout_dashboards
    explore: account_usage_sql_query
    type: table
    fields: [account_usage_sql_query.account_name, account_usage_sql_query.account_type,
      account_usage_sql_query.used_queries, account_usage_sql_query.remaining_queries,
      account_usage_sql_query.query_limit, account_usage_sql_query.used_queries_percentage,
      account_usage_sql_query.used_foundation_queries, account_usage_sql_query.remaining_foundation_queries,
      account_usage_sql_query.used_foundation_queries_percentage, account_usage_sql_query.foundation_query_limit]
    sorts: [account_usage_sql_query.used_foundation_queries_percentage desc]
    limit: 5000
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
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    minimum_column_width: 75
    column_order: ["$$$_row_numbers_$$$", account_usage_sql_query.account_name, account_usage_sql_query.account_type,
      account_usage_sql_query.used_queries, account_usage_sql_query.remaining_queries,
      account_usage_sql_query.query_limit, account_usage_sql_query.used_queries_percentage,
      account_usage_sql_query.used_foundation_queries, account_usage_sql_query.remaining_foundation_queries,
      account_usage_sql_query.foundation_query_limit, account_usage_sql_query.used_foundation_queries_percentage]
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 5
