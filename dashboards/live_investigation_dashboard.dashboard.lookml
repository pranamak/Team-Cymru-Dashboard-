- dashboard: live_investigation
  title: Live Investigation
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ""
  preferred_slug: fgq2cIJgSDCm3TbhuAD8BO
  elements:
    - title: Whois  General
      name: Whois  General
      model: teamcymru_scout_dashboards
      explore: indicator_whois_information
      type: looker_grid
      fields:
        [
          indicator_whois_information.indicator_type,
          indicator_whois_information.indicator,
          indicator_whois_information.modified,
          indicator_whois_information.asn,
          indicator_whois_information.cidr,
          indicator_whois_information.as_name,
          indicator_whois_information.bgp_asn,
          indicator_whois_information.bgp_as_name,
          indicator_whois_information.net_name,
          indicator_whois_information.cc,
          indicator_whois_information.description,
        ]
      sorts: [indicator_whois_information.indicator]
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
      header_font_size: "12"
      rows_font_size: "12"
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      truncate_header: false
      minimum_column_width: 75
      series_labels:
        indicator_whois_information.asn: ASN
        indicator_whois_information.cidr: CIDR
        indicator_whois_information.as_name: AS Name
        indicator_whois_information.bgp_asn: BGP ASN
        indicator_whois_information.bgp_as_name: BGP AS Name
        indicator_whois_information.cc: CC
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
      trellis: ""
      stacking: ""
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
        Indicator Type: indicator_whois_information.indicator_type
        Indicator: indicator_whois_information.indicator
      row: 37
      col: 0
      width: 24
      height: 4
    - title: Whois Admin
      name: Whois Admin
      model: teamcymru_scout_dashboards
      explore: indicator_whois_information
      type: looker_grid
      fields:
        [
          indicator_whois_information.contact_id,
          indicator_whois_information.contact_role,
          indicator_whois_information.contact_email,
          indicator_whois_information.contact_phone,
          indicator_whois_information.contact_country,
          indicator_whois_information.contact_address,
          indicator_whois_information.indicator,
          indicator_whois_information.indicator_type,
        ]
      sorts: [indicator_whois_information.contact_id]
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
      header_font_size: "12"
      rows_font_size: "12"
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      truncate_header: false
      minimum_column_width: 75
      series_labels:
        indicator_whois_information.contact_id: Admin Contact ID
        indicator_whois_information.contact_role: Admin Contact Role
        indicator_whois_information.contact_email: Admin Contact Email
        indicator_whois_information.contact_phone: Admin Contact Phone
        indicator_whois_information.contact_country: Admin Contact Country
        indicator_whois_information.contact_address: Admin Contact Address
      defaults_version: 1
      column_order:
        [
          "$$$_row_numbers_$$$",
          indicator_whois_information.indicator,
          indicator_whois_information.indicator_type,
          indicator_whois_information.contact_id,
          indicator_whois_information.contact_role,
          indicator_whois_information.contact_email,
          indicator_whois_information.contact_phone,
          indicator_whois_information.contact_country,
          indicator_whois_information.contact_address,
        ]
      listen:
        Indicator Type: indicator_whois_information.indicator_type
        Indicator: indicator_whois_information.indicator
      row: 41
      col: 0
      width: 24
      height: 4
    - title: Whois Tech
      name: Whois Tech
      model: teamcymru_scout_dashboards
      explore: indicator_whois_information
      type: looker_grid
      fields:
        [
          indicator_whois_information.indicator,
          indicator_whois_information.indicator_type,
          indicator_whois_information.tech_contact_id,
          indicator_whois_information.tech_contact_role,
          indicator_whois_information.tech_contact_email,
          indicator_whois_information.tech_contact_phone,
          indicator_whois_information.tech_contact_country,
          indicator_whois_information.tech_contact_address,
        ]
      sorts: [indicator_whois_information.indicator]
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
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
      listen:
        Indicator Type: indicator_whois_information.indicator_type
        Indicator: indicator_whois_information.indicator
      row: 45
      col: 0
      width: 24
      height: 3
    - title: Whois Organization
      name: Whois Organization
      model: teamcymru_scout_dashboards
      explore: indicator_whois_information
      type: looker_grid
      fields:
        [
          indicator_whois_information.indicator,
          indicator_whois_information.indicator_type,
          indicator_whois_information.organization_id,
          indicator_whois_information.organization_name,
          indicator_whois_information.organization_email,
          indicator_whois_information.organization_phone,
          indicator_whois_information.organization_address,
          indicator_whois_information.maintained_by_email,
          indicator_whois_information.maintained_by_router_email,
          indicator_whois_information.cc,
        ]
      sorts: [indicator_whois_information.indicator]
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
      header_font_size: "12"
      rows_font_size: "12"
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      column_order:
        [
          "$$$_row_numbers_$$$",
          indicator_whois_information.indicator,
          indicator_whois_information.indicator_type,
          indicator_whois_information.organization_id,
          indicator_whois_information.organization_name,
          indicator_whois_information.organization_email,
          indicator_whois_information.organization_phone,
          indicator_whois_information.cc,
          indicator_whois_information.organization_address,
          indicator_whois_information.maintained_by_email,
          indicator_whois_information.maintained_by_router_email,
        ]
      show_totals: true
      show_row_totals: true
      truncate_header: false
      minimum_column_width: 75
      series_labels:
        indicator_whois_information.cc: Organization Country
      defaults_version: 1
      listen:
        Indicator Type: indicator_whois_information.indicator_type
        Indicator: indicator_whois_information.indicator
      row: 48
      col: 0
      width: 24
      height: 4
    - title: Country
      name: Country
      model: teamcymru_scout_dashboards
      explore: indicator_whois_information
      type: looker_grid
      fields:
        [
          indicator_whois_information.indicator_type,
          indicator_whois_information.indicator,
          indicator_whois_information.cc,
        ]
      sorts: [indicator_whois_information.cc]
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
      header_font_size: "12"
      rows_font_size: "12"
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      column_order:
        [
          "$$$_row_numbers_$$$",
          indicator_whois_information.indicator_type,
          indicator_whois_information.indicator,
          indicator_whois_information.cc,
        ]
      show_totals: true
      show_row_totals: true
      truncate_header: false
      minimum_column_width: 75
      series_labels:
        indicator_whois_information.cc: Country
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      defaults_version: 1
      listen:
        Indicator Type: indicator_whois_information.indicator_type
        Indicator: indicator_whois_information.indicator
      row: 31
      col: 12
      width: 12
      height: 6
    - title: Insights
      name: Insights
      model: teamcymru_scout_dashboards
      explore: entity_graph
      type: table
      fields:
        [
          entity_graph__additional__fields__insight_message.value__string_value,
          entity_graph__additional__fields__indicator.value__string_value,
          entity_graph__additional__fields__indicator_type.value__string_value,
        ]
      filters:
        entity_graph__additional__fields_event_type.value__string_value: '"live_investigation"'
        entity_graph__metadata__event_metadata__base_labels__log_types.entity_graph__metadata__event_metadata__base_labels__log_types: '"TEAM_CYMRU_SCOUT_THREATINTEL"'
        entity_graph__additional__fields__insight_message.value__string_value: "-NULL"
      sorts:
        [entity_graph__additional__fields__insight_message.value__string_value]
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
      header_font_size: "12"
      rows_font_size: "12"
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
      trellis: ""
      stacking: ""
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
      show_sql_query_menu_options: false
      column_order:
        [
          "$$$_row_numbers_$$$",
          entity_graph__additional__fields__indicator_type.value__string_value,
          entity_graph__additional__fields__indicator.value__string_value,
          entity_graph__additional__fields__insight_message.value__string_value,
        ]
      show_totals: true
      show_row_totals: true
      truncate_header: false
      series_labels:
        entity_graph__additional__fields__insight_message.value__string_value: Insights
        entity_graph__additional__fields__indicator.value__string_value: Indicator
        entity_graph__additional__fields__indicator_type.value__string_value:
          Indicator
          Type
      listen:
        Indicator Type: entity_graph__additional__fields__indicator_type.value__string_value
        Indicator: entity_graph__additional__fields__indicator.value__string_value
      row: 52
      col: 0
      width: 24
      height: 4
    - title: Most Observed Domains for IP
      name: Most Observed Domains for IP
      model: teamcymru_scout_dashboards
      explore: indicator_observed_domains
      type: looker_grid
      fields:
        [
          indicator_observed_domains.indicator_type,
          indicator_observed_domains.indicator,
          indicator_observed_domains.top_pdns_domain,
          indicator_observed_domains.event_count,
        ]
      sorts: [indicator_observed_domains.indicator_type]
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
      header_font_size: "12"
      rows_font_size: "12"
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      truncate_header: false
      minimum_column_width: 75
      series_labels:
        indicator_observed_domains.top_pdns_domain: Domain
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
      trellis: ""
      stacking: ""
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
        Indicator Type: indicator_observed_domains.indicator_type
        Indicator: indicator_observed_domains.indicator
      row: 59
      col: 0
      width: 24
      height: 4
    - title: IP Open Ports
      name: IP Open Ports
      model: teamcymru_scout_dashboards
      explore: indicator_open_ports_info
      type: looker_grid
      fields:
        [
          indicator_open_ports_info.indicator_type,
          indicator_open_ports_info.indicator,
          indicator_open_ports_info.protocol,
          indicator_open_ports_info.port,
          indicator_open_ports_info.service,
          indicator_open_ports_info.first_seen,
          indicator_open_ports_info.last_seen,
        ]
      sorts: [indicator_open_ports_info.indicator]
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
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
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
      trellis: ""
      stacking: ""
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
        Indicator Type: indicator_open_ports_info.indicator_type
        Indicator: indicator_open_ports_info.indicator
      row: 56
      col: 0
      width: 24
      height: 3
    - title: Most Observed Fingerprints for IP
      name: Most Observed Fingerprints for IP
      model: teamcymru_scout_dashboards
      explore: indicator_fingerprints_info
      type: looker_grid
      fields:
        [
          indicator_fingerprints_info.indicator_type,
          indicator_fingerprints_info.indicator,
          indicator_fingerprints_info.fingerprint_type,
          indicator_fingerprints_info.signature,
          indicator_fingerprints_info.fingerprint_first_seen,
          indicator_fingerprints_info.fingerprint_last_seen,
          indicator_fingerprints_info.fingerprint_port,
        ]
      sorts: [indicator_fingerprints_info.indicator_type]
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
      header_font_size: "12"
      rows_font_size: "12"
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      truncate_header: false
      minimum_column_width: 75
      series_labels:
        indicator_fingerprints_info.fingerprint_type: Type
        indicator_fingerprints_info.fingerprint_first_seen: First Seen
        indicator_fingerprints_info.fingerprint_last_seen: Last Seen
        indicator_fingerprints_info.fingerprint_port: Port
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
      trellis: ""
      stacking: ""
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
        Indicator Type: indicator_fingerprints_info.indicator_type
        Indicator: indicator_fingerprints_info.indicator
      row: 70
      col: 0
      width: 24
      height: 5
    - title: Certificate Details for IP
      name: Certificate Details for IP
      model: teamcymru_scout_dashboards
      explore: indicator_certs_info
      type: looker_grid
      fields:
        [
          indicator_certs_info.indicator_type,
          indicator_certs_info.indicator,
          indicator_certs_info.subject,
          indicator_certs_info.issuer,
          indicator_certs_info.port,
          indicator_certs_info.not_before,
          indicator_certs_info.not_after,
          indicator_certs_info.md5,
          indicator_certs_info.sha1,
          indicator_certs_info.sha256,
        ]
      sorts: [indicator_certs_info.subject]
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
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
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
      trellis: ""
      stacking: ""
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
      column_order:
        [
          "$$$_row_numbers_$$$",
          indicator_certs_info.indicator_type,
          indicator_certs_info.indicator,
          indicator_certs_info.subject,
          indicator_certs_info.issuer,
          indicator_certs_info.port,
          indicator_certs_info.not_before,
          indicator_certs_info.not_after,
          indicator_certs_info.md5,
          indicator_certs_info.sha1,
          indicator_certs_info.sha256,
        ]
      listen:
        Indicator Type: indicator_certs_info.indicator_type
        Indicator: indicator_certs_info.indicator
      row: 63
      col: 0
      width: 24
      height: 7
    - title: Overall Rating
      name: Overall Rating
      model: teamcymru_scout_dashboards
      explore: indicator_overall_rating
      type: table
      fields:
        [
          indicator_overall_rating.indicator_type,
          indicator_overall_rating.indicator,
          indicator_overall_rating.overall_rating,
        ]
      sorts: [indicator_overall_rating.indicator]
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
      defaults_version: 1
      listen:
        Indicator Type: indicator_overall_rating.indicator_type
        Indicator: indicator_overall_rating.indicator
      row: 31
      col: 0
      width: 12
      height: 6
    - title: IP PDNS
      name: IP PDNS
      model: teamcymru_scout_dashboards
      explore: indicator_pdns
      type: looker_grid
      fields:
        [
          indicator_pdns.indicator_type,
          indicator_pdns.indicator,
          indicator_pdns.top_pdns_domain,
          indicator_pdns.formatted_first_seen,
          indicator_pdns.formatted_last_seen,
        ]
      filters: {}
      sorts: [indicator_pdns.formatted_last_seen desc]
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
      header_font_size: "12"
      rows_font_size: "12"
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      truncate_header: false
      minimum_column_width: 75
      series_labels:
        indicator_pdns.formatted_first_seen: First Seen
        indicator_pdns.formatted_last_seen: Last Seen
      x_axis_gridlines: false
      y_axis_gridlines: true
      y_axes:
        [
          {
            label: "",
            orientation: bottom,
            series:
              [
                {
                  axisId: indicator_pdns.formatted_last_seen,
                  id: indicator_pdns.formatted_last_seen,
                  name: Time Range,
                },
              ],
            showLabels: true,
            showValues: false,
            maxValue: !!null "",
            minValue: !!null "",
            unpinAxis: false,
            tickDensity: default,
            tickDensityCustom: 5,
            type: linear,
          },
        ]
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
      x_axis_zoom: true
      y_axis_zoom: true
      trellis: ""
      stacking: ""
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
      truncate_column_names: false
      defaults_version: 1
      show_null_points: true
      interpolation: linear
      value_labels: legend
      label_type: labPer
      listen:
        Indicator Type: indicator_pdns.indicator_type
        Indicator: indicator_pdns.indicator
      row: 75
      col: 0
      width: 24
      height: 6
    - title: IP Open Ports
      name: IP Open Ports (2)
      model: teamcymru_scout_dashboards
      explore: indicator_open_ports
      type: looker_grid
      fields:
        [
          indicator_open_ports.indicator_type,
          indicator_open_ports.indicator,
          indicator_open_ports.port,
          indicator_open_ports.first_seen,
          indicator_open_ports.last_seen,
        ]
      sorts: [indicator_open_ports.port]
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
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
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
      trellis: ""
      stacking: ""
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
        Indicator Type: indicator_open_ports.indicator_type
        Indicator: indicator_open_ports.indicator
      row: 86
      col: 0
      width: 24
      height: 4
    - title: Certificate
      name: Certificate
      model: teamcymru_scout_dashboards
      explore: indicator_certificate
      type: looker_grid
      fields:
        [
          indicator_certificate.indicator_type,
          indicator_certificate.indicator,
          indicator_certificate.subject,
          indicator_certificate.first_seen,
          indicator_certificate.last_seen,
        ]
      sorts: [indicator_certificate.subject]
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
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
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
      trellis: ""
      stacking: ""
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
        Indicator Type: indicator_certificate.indicator_type
        Indicator: indicator_certificate.indicator
      row: 90
      col: 0
      width: 24
      height: 6
    - title: Events
      name: Events
      model: teamcymru_scout_dashboards
      explore: indicator_proto_by_ip
      type: looker_grid
      fields:
        [
          indicator_proto_by_ip.indicator_type,
          indicator_proto_by_ip.indicator,
          indicator_proto_by_ip.time,
          indicator_proto_by_ip.event_count,
        ]
      sorts: [indicator_proto_by_ip.indicator]
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
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
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
      trellis: ""
      stacking: ""
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
        Indicator Type: indicator_proto_by_ip.indicator_type
        Indicator: indicator_proto_by_ip.indicator
      row: 96
      col: 0
      width: 24
      height: 6
    - title: Communications
      name: Communications
      model: teamcymru_scout_dashboards
      explore: indicator_proto_by_ip_protocol
      type: looker_grid
      fields:
        [
          indicator_proto_by_ip_protocol.indicator_type,
          indicator_proto_by_ip_protocol.indicator,
          indicator_proto_by_ip_protocol.date,
          indicator_proto_by_ip_protocol.protocol,
          indicator_proto_by_ip_protocol.event_count,
        ]
      sorts: [indicator_proto_by_ip_protocol.indicator]
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
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
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
      trellis: ""
      stacking: ""
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
        Indicator Type: indicator_proto_by_ip_protocol.indicator_type
        Indicator: indicator_proto_by_ip_protocol.indicator
      row: 102
      col: 0
      width: 24
      height: 7
    - title: Services
      name: Services
      model: teamcymru_scout_dashboards
      explore: indicator_services
      type: looker_grid
      fields:
        [
          indicator_services.indicator_type,
          indicator_services.indicator,
          indicator_services.date,
          indicator_services.service,
          indicator_services.data,
        ]
      sorts: [indicator_services.indicator]
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
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
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
      trellis: ""
      stacking: ""
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
        Indicator Type: indicator_services.indicator_type
        Indicator: indicator_services.indicator
      row: 109
      col: 0
      width: 24
      height: 6
    - title: Tags
      name: Tags
      model: teamcymru_scout_dashboards
      explore: indicator_tags
      type: looker_grid
      fields:
        [
          indicator_tags.indicator_type,
          indicator_tags.indicator,
          indicator_tags.date,
          indicator_tags.service,
          indicator_tags.data,
        ]
      sorts: [indicator_tags.service]
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
      header_font_size: "12"
      rows_font_size: "12"
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      truncate_header: false
      minimum_column_width: 75
      series_labels:
        indicator_tags.service: Tag
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
      trellis: ""
      stacking: ""
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
        Indicator Type: indicator_tags.indicator_type
        Indicator: indicator_tags.indicator
      row: 115
      col: 0
      width: 24
      height: 6
    - title: IP ASNS
      name: IP ASNS
      model: teamcymru_scout_dashboards
      explore: indicator_asns
      type: looker_grid
      fields:
        [
          indicator_asns.indicator_type,
          indicator_asns.indicator,
          indicator_asns.date,
          indicator_asns.asns,
          indicator_asns.data,
        ]
      sorts: [indicator_asns.indicator]
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
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
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
      trellis: ""
      stacking: ""
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
        Indicator Type: indicator_asns.indicator_type
        Indicator: indicator_asns.indicator
      row: 121
      col: 0
      width: 24
      height: 6
    - title: Countries
      name: Countries
      model: teamcymru_scout_dashboards
      explore: indictor_county_code
      type: looker_grid
      fields:
        [
          indictor_county_code.indicator_type,
          indictor_county_code.indicator,
          indictor_county_code.date,
          indictor_county_code.country_code,
          indictor_county_code.data,
        ]
      sorts: [indictor_county_code.indicator]
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
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
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
      trellis: ""
      stacking: ""
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
        Indicator Type: indictor_county_code.indicator_type
        Indicator: indictor_county_code.indicator
      row: 127
      col: 0
      width: 24
      height: 7
    - title: Summary Tags
      name: Summary Tags
      model: teamcymru_scout_dashboards
      explore: indicator_summary_tags
      type: looker_grid
      fields:
        [
          indicator_summary_tags.indicator_type,
          indicator_summary_tags.indicator,
          indicator_summary_tags.tag_name,
          indicator_summary_tags.tag_first_seen,
          indicator_summary_tags.tag_last_seen,
        ]
      sorts: [indicator_summary_tags.indicator]
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
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
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
      trellis: ""
      stacking: ""
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
        Indicator Type: indicator_summary_tags.indicator_type
        Indicator: indicator_summary_tags.indicator
      row: 81
      col: 0
      width: 24
      height: 5
    - title: Domain Details
      name: Domain Details
      model: teamcymru_scout_dashboards
      explore: indicator_domain_detail
      type: table
      fields:
        [
          indicator_domain_detail.indicator_type,
          indicator_domain_detail.indicator,
          indicator_domain_detail.ip,
          indicator_domain_detail.country_code,
          indicator_domain_detail.last_seen,
          indicator_domain_detail.as_info,
          indicator_domain_detail.events_communication,
          indicator_domain_detail.events_count,
          indicator_domain_detail.tag_ids,
          indicator_domain_detail.tag_names,
        ]
      filters: {}
      sorts: [indicator_domain_detail.as_info]
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
      header_font_size: "12"
      rows_font_size: "12"
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      truncate_header: false
      minimum_column_width: 75
      series_labels:
        indicator_domain_detail.as_info: AS Name
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
      trellis: ""
      stacking: ""
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
      series_column_widths:
        indicator_domain_detail.ip: 127
      listen:
        Indicator Type: indicator_domain_detail.indicator_type
        Indicator: indicator_domain_detail.indicator
      row: 0
      col: 0
      width: 24
      height: 6
    - title: Domain Open Ports
      name: Domain Open Ports
      model: teamcymru_scout_dashboards
      explore: domain_open_port
      type: looker_grid
      fields:
        [
          domain_open_port.indicator,
          domain_open_port.indicator_type,
          domain_open_port.ip,
          domain_open_port.port,
          domain_open_port.protocol_id,
          domain_open_port.protocol_type,
          domain_open_port.service,
          domain_open_port.event_count,
        ]
      sorts: [domain_open_port.indicator]
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
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
      listen:
        Indicator Type: domain_open_port.indicator_type
        Indicator: domain_open_port.indicator
      row: 17
      col: 0
      width: 24
      height: 7
    - title: Domain PDNS
      name: Domain PDNS
      model: teamcymru_scout_dashboards
      explore: domain_pdns
      type: looker_grid
      fields:
        [
          domain_pdns.indicator,
          domain_pdns.indicator_type,
          domain_pdns.ip,
          domain_pdns.domain,
          domain_pdns.event_count,
        ]
      sorts: [domain_pdns.indicator]
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
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
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
      trellis: ""
      stacking: ""
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
        Indicator Type: domain_pdns.indicator_type
        Indicator: domain_pdns.indicator
      row: 6
      col: 0
      width: 24
      height: 6
    - title: Domain Fingerprints
      name: Domain Fingerprints
      model: teamcymru_scout_dashboards
      explore: domain_fingerprints
      type: looker_grid
      fields:
        [
          domain_fingerprints.indicator,
          domain_fingerprints.indicator_type,
          domain_fingerprints.ip,
          domain_fingerprints.type,
          domain_fingerprints.signature,
          domain_fingerprints.event_count,
        ]
      sorts: [domain_fingerprints.indicator]
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
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
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
      trellis: ""
      stacking: ""
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
        Indicator Type: domain_fingerprints.indicator_type
        Indicator: domain_fingerprints.indicator
      row: 24
      col: 0
      width: 24
      height: 7
    - title: Domain Top Peers
      name: Domain Top Peers
      model: teamcymru_scout_dashboards
      explore: domain_top_peers
      type: looker_grid
      fields:
        [
          domain_top_peers.indicator,
          domain_top_peers.indicator_type,
          domain_top_peers.ip,
          domain_top_peers.event_count,
        ]
      sorts: [domain_top_peers.indicator]
      limit: 500
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
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
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
      trellis: ""
      stacking: ""
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
        Indicator Type: domain_top_peers.indicator_type
        Indicator: domain_top_peers.indicator
      row: 12
      col: 0
      width: 24
      height: 5
  filters:
    - name: Event Type
      title: Event Type
      type: field_filter
      default_value: '"live_investigation"'
      allow_multiple_values: true
      required: true
      ui_config:
        type: checkboxes
        display: popover
        options:
          - live_investigation
      model: teamcymru_scout_dashboards
      explore: entity_graph
      listens_to_filters: []
      field: entity_graph__additional__fields_event_type.value__string_value
    - name: Indicator Type
      title: Indicator Type
      type: field_filter
      default_value: ""
      allow_multiple_values: true
      required: false
      ui_config:
        type: dropdown_menu
        display: inline
      model: teamcymru_scout_dashboards
      explore: entity_graph
      listens_to_filters: [Event Type]
      field: entity_graph__additional__fields__indicator_type.value__string_value
    - name: Indicator
      title: Indicator
      type: field_filter
      default_value: ""
      allow_multiple_values: true
      required: false
      ui_config:
        type: dropdown_menu
        display: inline
      model: teamcymru_scout_dashboards
      explore: entity_graph
      listens_to_filters: [Indicator Type, Event Type]
      field: entity_graph__additional__fields__indicator.value__string_value
