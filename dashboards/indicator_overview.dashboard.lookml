- dashboard: indicator_overview
  title: Indicator Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 7DBXyonP7FBpRHmNy98lV8
  elements:
  - title: Total Indicators
    name: Total Indicators
    model: teamcymru_scout_dashboards
    explore: entity_graph
    type: single_value
    fields: [count_of_value_string_value]
    filters:
      entity_graph__metadata__event_metadata__base_labels__log_types.entity_graph__metadata__event_metadata__base_labels__log_types: '"TEAM_CYMRU_SCOUT_THREATINTEL"'
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: entity_graph__additional__fields__indicator.value__string_value
      expression: ''
      label: Count of Value String Value
      measure: count_of_value_string_value
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
      Indicator Type: entity_graph__additional__fields__indicator_type.value__string_value
      Event Type: entity_graph__additional__fields_event_type.value__string_value
    row: 0
    col: 0
    width: 8
    height: 5
  - title: Indicator Reported in Last Week
    name: Indicator Reported in Last Week
    model: teamcymru_scout_dashboards
    explore: total_indicators_in_last_week
    type: single_value
    fields: [count_of_indicators]
    sorts: [count_of_indicators desc 0]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: total_indicators_in_last_week.indicators
      expression: ''
      label: Count of Indicators
      measure: count_of_indicators
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
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
    listen:
      Indicator Type: total_indicators_in_last_week.indicator_type
    row: 0
    col: 8
    width: 8
    height: 5
  - title: Indicators Reported In Last Day
    name: Indicators Reported In Last Day
    model: teamcymru_scout_dashboards
    explore: total_indicators_in_last_day
    type: single_value
    fields: [count_of_indicators]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: total_indicators_in_last_day.indicators
      expression: ''
      label: Count of Indicators
      measure: count_of_indicators
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
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Indicator Type: total_indicators_in_last_day.indicator_type
    row: 0
    col: 16
    width: 8
    height: 5
  - title: Indicators Ingested Over Time
    name: Indicators Ingested Over Time
    model: teamcymru_scout_dashboards
    explore: indicators_ingested_over_time
    type: looker_column
    fields: [count_of_indicators, indicators_ingested_over_time.ingestion_time_time,
      ingestion_time, indicators_ingested_over_time.indicator_type]
    sorts: [indicators_ingested_over_time.ingestion_time_time desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: indicators_ingested_over_time.indicators
      expression: ''
      label: Count of Indicators
      measure: count_of_indicators
      type: count_distinct
    - category: dimension
      description: ''
      label: Ingestion Time
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: ingestion_time
      args:
      - indicators_ingested_over_time.ingestion_time_time
      - - label: Ingestion Time
          filter: ''
      -
      _kind_hint: dimension
      _type_hint: string
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: count_of_indicators,
            id: count_of_indicators, name: Indicators}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Ingestion Time
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      count_of_indicators: Indicators
    hidden_pivots: {}
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    listen:
      Indicator Type: indicators_ingested_over_time.indicator_type
    row: 5
    col: 0
    width: 16
    height: 7
  - title: Indicators Comparision
    name: Indicators Comparision
    model: teamcymru_scout_dashboards
    explore: indicators_ingested_over_time
    type: looker_pie
    fields: [indicators_ingested_over_time.indicator_type, count_of_indicators]
    sorts: [indicators_ingested_over_time.indicator_type]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: indicators_ingested_over_time.indicators
      expression: ''
      label: Count of Indicators
      measure: count_of_indicators
      type: count_distinct
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
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
    listen:
      Indicator Type: indicators_ingested_over_time.indicator_type
    row: 5
    col: 16
    width: 8
    height: 7
  - title: Indicator Details
    name: Indicator Details
    model: teamcymru_scout_dashboards
    explore: indicator_details
    type: table
    fields: [indicator_details.indicator_type, indicator_details.indicator, indicator_details.open_ports,
      indicator_details.open_port_services, indicator_details.protocol_id, indicator_details.protocol_name,
      indicator_details.pdns_ips, indicator_details.pdns_domains]
    sorts: [indicator_details.protocol_name desc]
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
    series_labels:
      indicator_details.pdns_ips: Pdns IPs
      indicator_details.protocol_id: Protocol IDs
      indicator_details.protocol_name: Protocol Types
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    defaults_version: 1
    listen:
      Indicator Type: indicator_details.indicator_type
      Indicators: indicator_details.indicator
    row: 26
    col: 0
    width: 24
    height: 10
  - title: Indicator Identity Information
    name: Indicator Identity Information
    model: teamcymru_scout_dashboards
    explore: indicator_identity
    type: table
    fields: [indicator_identity.indicator_type, indicator_identity.indicator, indicator_identity.asn,
      indicator_identity.as_name, indicator_identity.net_name, indicator_identity.organization_name,
      indicator_identity.tag_ids, indicator_identity.tag_names]
    sorts: [indicator_identity.indicator]
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
    defaults_version: 1
    listen:
      Indicator Type: indicator_identity.indicator_type
      Indicators: indicator_identity.indicator
    row: 12
    col: 0
    width: 24
    height: 7
  - title: Indicator Insights Information
    name: Indicator Insights Information
    model: teamcymru_scout_dashboards
    explore: indicator_insights
    type: table
    fields: [indicator_insights.indicator_type, indicator_insights.indicator, indicator_insights.insights_messages_with_ratings,
      indicator_insights.overall_rating]
    sorts: [indicator_insights.indicator]
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
    defaults_version: 1
    listen:
      Indicator Type: indicator_insights.indicator_type
      Indicators: indicator_insights.indicator
    row: 19
    col: 0
    width: 24
    height: 7
  filters:
  - name: Event Type
    title: Event Type
    type: field_filter
    default_value: '"domain_search","ip_detail","live_investigation"'
    allow_multiple_values: true
    required: true
    ui_config:
      type: checkboxes
      display: inline
      options:
      - domain_search
      - ip_detail
      - live_investigation
    model: teamcymru_scout_dashboards
    explore: entity_graph
    listens_to_filters: []
    field: entity_graph__additional__fields_event_type.value__string_value
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
    explore: entity_graph
    listens_to_filters: [Value String Value, Event Type]
    field: entity_graph__additional__fields__indicator_type.value__string_value
  - name: Indicators
    title: Indicators
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: teamcymru_scout_dashboards
    explore: entity_graph
    listens_to_filters: [Indicator Type, Value String Value, Event Type]
    field: entity_graph__additional__fields__indicator.value__string_value
