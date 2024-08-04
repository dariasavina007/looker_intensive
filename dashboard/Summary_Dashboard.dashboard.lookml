---
- dashboard: summary_dashboard
  title: Summary Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: wHbyLbSJpiPIXIR4dROlTG
  elements:
  - title: " (Copy)"
    name: " (Copy)"
    model: d.savina_intensive_13
    explore: f_lineitems
    type: single_value
    fields: [f_lineitems.count]
    filters:
      d_dates.date_val_date: 1995/01/01
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color: "#000000"
    single_value_title: Total Number of orders for 1 Jan 1995
    value_format: ''
    conditional_formatting: []
    defaults_version: 1
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
    hidden_pivots: {}
    row: 0
    col: 8
    width: 6
    height: 3
  - title: " (Copy 2)"
    name: " (Copy 2)"
    model: d.savina_intensive_13
    explore: f_lineitems
    type: single_value
    fields: [f_lineitems.gross_margin_percentage]
    filters:
      d_dates.date_val_date: 1995/01/01
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color: "#000000"
    single_value_title: Gross Margin % over the Jan 1995
    value_format: ''
    conditional_formatting: []
    defaults_version: 1
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
    hidden_pivots: {}
    row: 0
    col: 14
    width: 5
    height: 3
  - title: " (Copy 3)"
    name: " (Copy 3)"
    model: d.savina_intensive_13
    explore: f_lineitems
    type: single_value
    fields: [f_lineitems.number_of_item_returned]
    filters:
      d_dates.date_val_date: 1995/01/01
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color: "#000000"
    single_value_title: Total number of returns over the Jan 1995
    value_format: ''
    conditional_formatting: []
    defaults_version: 1
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
    hidden_pivots: {}
    row: 0
    col: 19
    width: 5
    height: 3
  - title:
    name: ''
    model: d.savina_intensive_13
    explore: f_lineitems
    type: single_value
    fields: [f_lineitems.total_gross_revenue]
    filters:
      d_dates.date_val_date: 1995/01/01
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color: "#000000"
    single_value_title: Total Revenue for 1 Jan 1995
    value_format: ''
    conditional_formatting: []
    defaults_version: 1
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
    row: 0
    col: 0
    width: 8
    height: 3
  - title: Total Gross Margin Amount
    name: Total Gross Margin Amount
    model: d.savina_intensive_13
    explore: f_lineitems
    type: looker_column
    fields: [f_lineitems.total_gross_margin_amount, d_dates.date_val_year]
    fill_fields: [d_dates.date_val_year]
    sorts: [d_dates.date_val_year desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    y_axes: [{label: Total Gross Margin Amount, orientation: left, series: [{axisId: f_lineitems.total_gross_margin_amount,
            id: f_lineitems.total_gross_margin_amount, name: Total Gross Margin Amount}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '10'
    series_colors:
      f_lineitems.total_gross_margin_amount: "#62bad4"
    label_color: ["#1f3e5a"]
    label_rotation: 0
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 3
    col: 0
    width: 11
    height: 7
  - title: Revenue by Shipping Method
    name: Revenue by Shipping Method
    model: d.savina_intensive_13
    explore: f_lineitems
    type: looker_pie
    fields: [f_lineitems.total_gross_margin_amount, f_lineitems.l_shipmode]
    filters:
      d_dates.year: '1995'
    sorts: [f_lineitems.l_shipmode]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
    series_colors: {}
    series_labels:
      f_lineitems.l_shipmode: Shiping Mode
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: gray
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
    series_cell_visualizations:
      f_lineitems.total_gross_margin_amount:
        is_active: false
    series_text_format:
      f_lineitems.total_gross_margin_amount:
        align: left
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
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    groupBars: true
    labelSize: 10pt
    showLegend: true
    font_size: 12
    up_color: false
    down_color: false
    total_color: false
    map: auto
    map_projection: ''
    quantize_colors: false
    listen: {}
    row: 10
    col: 8
    width: 7
    height: 6
  - title: Revenue by Balance Groups
    name: Revenue by Balance Groups
    model: d.savina_intensive_13
    explore: f_lineitems
    type: looker_pie
    fields: [f_lineitems.total_gross_revenue, d_supplier.cohort_of_suppliers_by_accbal]
    fill_fields: [d_supplier.cohort_of_suppliers_by_accbal]
    filters:
      d_supplier.cohort_of_suppliers_by_accbal: "-Unknown"
      d_dates.year: '1995'
    sorts: [f_lineitems.total_gross_revenue desc 0]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
    series_colors: {}
    series_labels: {}
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
    show_null_points: true
    hidden_fields: []
    hidden_points_if_no: []
    font_size: 12
    up_color: false
    down_color: false
    total_color: false
    listen: {}
    row: 10
    col: 0
    width: 8
    height: 6
  - title: Revenue & Profit Overview
    name: Revenue & Profit Overview
    model: d.savina_intensive_13
    explore: f_lineitems
    type: looker_column
    fields: [f_lineitems.total_gross_margin_amount, f_lineitems.total_gross_revenue,
      d_dates.month_name]
    filters:
      d_dates.year: '1995'
    sorts: [f_lineitems.total_gross_margin_amount desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    color_application:
      collection_id: da8306b5-3b46-48aa-9ead-a3b32292f35c
      palette_id: 75905e81-dadc-472c-b9a2-a201f788d55d
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: f_lineitems.total_gross_margin_amount,
            id: f_lineitems.total_gross_margin_amount, name: Total Gross Margin Amount},
          {axisId: f_lineitems.total_gross_revenue, id: f_lineitems.total_gross_revenue,
            name: Total Gross Revenue}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: false
    y_axis_zoom: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '10'
    series_colors: {}
    label_rotation: 0
    show_dropoff: false
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
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 3
    col: 11
    width: 13
    height: 7
  - title: Sales by Region with Order Status
    name: Sales by Region with Order Status
    model: d.savina_intensive_13
    explore: f_lineitems
    type: looker_column
    fields: [d_customer.c_region, f_lineitems.l_orderstatus, f_lineitems.count]
    pivots: [f_lineitems.l_orderstatus]
    filters:
      d_dates.year: '1995'
      d_customer.c_region: "-NULL"
    sorts: [f_lineitems.l_orderstatus, f_lineitems.count desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: f_lineitems.count, id: F
              - f_lineitems.count, name: F}, {axisId: f_lineitems.count, id: O - f_lineitems.count,
            name: O}, {axisId: f_lineitems.count, id: P - f_lineitems.count, name: P}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: false
    y_axis_zoom: false
    hide_legend: false
    series_colors: {}
    defaults_version: 1
    show_null_points: true
    interpolation: linear
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
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
    listen: {}
    row: 10
    col: 15
    width: 9
    height: 6
  - title: Top 10 Suppliers by Gross Margin %
    name: Top 10 Suppliers by Gross Margin %
    model: d.savina_intensive_13
    explore: f_lineitems
    type: looker_grid
    fields: [f_lineitems.gross_margin_percentage, d_supplier.s_name, f_lineitems.total_revenue_percentage]
    filters:
      d_dates.year: '1995'
    sorts: [f_lineitems.gross_margin_percentage desc 0]
    limit: 10
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: true
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: true
    minimum_column_width: 75
    series_labels:
      d_supplier.s_name: Supplier Name
      f_lineitems.gross_margin_percentage: Gross Margin %
      f_lineitems.total_revenue_percentage: Total Revenue %
    series_cell_visualizations:
      f_lineitems.total_revenue_percentage:
        is_active: false
    series_text_format:
      f_lineitems.gross_margin_percentage:
        align: left
      f_lineitems.total_revenue_percentage:
        align: left
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    conditional_formatting: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 16
    col: 0
    width: 8
    height: 6
  - title: Daily Sales
    name: Daily Sales
    model: d.savina_intensive_13
    explore: f_lineitems
    type: looker_line
    fields: [f_lineitems.number_of_item_sold, d_dates.month_name, d_dates.date_val_day_of_month]
    pivots: [d_dates.month_name]
    fill_fields: [d_dates.date_val_day_of_month]
    filters:
      d_dates.date_val_date: 1994/12/01 to 1995/02/01
    sorts: [d_dates.month_name, d_dates.date_val_day_of_month desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: f_lineitems.number_of_item_sold,
            id: Dec - f_lineitems.number_of_item_sold, name: Dec}, {axisId: f_lineitems.number_of_item_sold,
            id: Jan - f_lineitems.number_of_item_sold, name: Jan}], showLabels: true,
        showValues: true, minValue: 60000, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 0, type: linear}]
    x_axis_zoom: false
    y_axis_zoom: false
    reference_lines: []
    swap_axes: false
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 16
    col: 8
    width: 16
    height: 6
