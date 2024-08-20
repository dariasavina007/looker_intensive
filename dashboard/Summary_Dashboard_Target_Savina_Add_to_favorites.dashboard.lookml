---
- dashboard: summary_dashboard_target_savina
  title: Summary Dashboard Target Savina
  layout: newspaper
  crossfilter_enabled: true
  description: ''
  preferred_slug: akTLnc1J7mxqudnXSCMTnO
  elements:
  - title: Untitled
    name: Untitled
    model: d.savina_intensive_13
    explore: f_lineitems
    type: single_value
    fields: [f_lineitems.dynamic_timeframe_title]
    filters: {}
    sorts: [f_lineitems.dynamic_timeframe_title]
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
    defaults_version: 1
    listen:
      Timeframe Selector: f_lineitems.timeframe_selector
    row: 0
    col: 0
    width: 11
    height: 2
  - title:
    name: ''
    model: d.savina_intensive_13
    explore: f_lineitems
    type: looker_column
    fields: [f_lineitems.dynamic_timeframe, f_lineitems.total_gross_margin_amount]
    filters: {}
    sorts: [f_lineitems.total_gross_margin_amount desc 0]
    limit: 500
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
    y_axes: [{label: '', orientation: left, series: [{axisId: f_lineitems.total_gross_margin_amount,
            id: f_lineitems.total_gross_margin_amount, name: Total Gross Margin Amount}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: false
    show_dropoff: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Timeframe Selector: f_lineitems.timeframe_selector
    row: 2
    col: 0
    width: 11
    height: 11
  - title: Untitled
    name: Untitled (2)
    model: d.savina_intensive_13
    explore: f_lineitems
    type: table
    fields: [d_supplier.s_name, d_supplier.s_region, f_lineitems.total_sales_from_items_sold,
      f_lineitems.number_of_item_returned, f_lineitems.item_return_rate, f_lineitems.returned_rate_group]
    filters: {}
    sorts: [f_lineitems.total_sales_from_items_sold desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    title_hidden: true
    listen:
      Timeframe Selector: f_lineitems.timeframe_selector
    row: 0
    col: 11
    width: 13
    height: 13
  filters:
  - name: Region
    title: Region
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: epam_kosintsev_os_hw01
    explore: d_customer
    listens_to_filters: [Nation]
    field: d_customer.c_region
  - name: Nation
    title: Nation
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: epam_kosintsev_os_hw01
    explore: d_customer
    listens_to_filters: []
    field: d_customer.c_nation
  - name: Timeframe Selector
    title: Timeframe Selector
    type: field_filter
    default_value: year
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: d.savina_intensive_13
    explore: f_lineitems
    listens_to_filters: []
    field: f_lineitems.timeframe_selector
