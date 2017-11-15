- dashboard: reach_overview
  title: Reach Overview
  layout: newspaper
  elements:
  - title: Distinct Users
    name: Distinct Users
    model: doubleclick_demo
    explore: master
    type: single_value
    fields:
    - master.distinct_users
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Date: master.impression_date
    row: 0
    col: 0
    width: 6
    height: 3
  - title: Campaigns
    name: Campaigns
    model: doubleclick_demo
    explore: master
    type: single_value
    fields:
    - master.campaign_count
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Date: master.impression_date
    row: 0
    col: 6
    width: 6
    height: 3
  - title: Cost by Browser
    name: Cost by Browser
    model: doubleclick_demo
    explore: master
    type: looker_area
    fields:
    - master.impression_week
    - master.dbm_revenue
    - master.count_impressions
    - click.count_clicks
    - activity.count_activities
    - match_table_browsers.browser_platform
    pivots:
    - match_table_browsers.browser_platform
    fill_fields:
    - master.impression_week
    sorts:
    - master.impression_week desc
    - match_table_browsers.browser_platform
    limit: 500
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types: {}
    hidden_fields:
    - master.count_impressions
    - click.count_clicks
    - activity.count_activities
    listen:
      Date: master.impression_date
    row: 10
    col: 0
    width: 12
    height: 7
  - title: Conversions
    name: Conversions
    model: doubleclick_demo
    explore: master
    type: single_value
    fields:
    - activity.count_activities
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Date: master.impression_date
    row: 0
    col: 18
    width: 6
    height: 3
  - title: Ads
    name: Ads
    model: doubleclick_demo
    explore: master
    type: single_value
    fields:
    - master.ad_count
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Date: master.impression_date
    row: 0
    col: 12
    width: 6
    height: 3
  - title: Users by Zip
    name: Users by Zip
    model: doubleclick_demo
    explore: master
    type: looker_geo_coordinates
    fields:
    - master.zip_postal_code
    - master.distinct_users
    filters:
      master.country_code: US
    sorts:
    - master.distinct_users desc
    limit: 500
    column_limit: 50
    map: usa
    map_projection: ''
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    map_latitude: 37.549803917822196
    map_longitude: -97.28017449999999
    map_zoom: 3
    listen:
      Date: master.impression_date
    row: 3
    col: 9
    width: 8
    height: 7
  - title: Funnel
    name: Funnel
    model: doubleclick_demo
    explore: master
    type: looker_column
    fields:
    - master.count_impressions
    - click.count_clicks
    - activity.count_activities
    - master.dbm_revenue
    - master.dbm_device_type
    filters:
      master.dbm_device_type: "-Other"
      master.impression_date: after 2017/10/01
    sorts:
    - master.dbm_device_type
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: log
      unpinAxis: false
      valueFormat:
      series:
      - id: master.count_impressions
        name: Master Count Impressions
        axisId: master.count_impressions
      - id: click.count_clicks
        name: Click Count Clicks
        axisId: click.count_clicks
      - id: activity.count_activities
        name: Activity Count Activities
        axisId: activity.count_activities
      - id: master.dbm_revenue
        name: Master Dbm Revenue
        axisId: master.dbm_revenue
    hidden_fields:
    - master.dbm_revenue
    show_dropoff: true
    row: 3
    col: 0
    width: 9
    height: 7
  - title: Performance
    name: Performance
    model: doubleclick_demo
    explore: master
    type: looker_line
    fields:
    - master.count_impressions
    - click.count_clicks
    - activity.count_activities
    - master.dbm_revenue
    - match_table_campaigns.campaign_start_week
    fill_fields:
    - match_table_campaigns.campaign_start_week
    sorts:
    - match_table_campaigns.campaign_start_week desc
    limit: 10
    dynamic_fields:
    - table_calculation: click_through_rate
      label: Click Through Rate
      expression: "${click.count_clicks} / ${master.count_impressions}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate
      label: Conversion Rate
      expression: "${activity.count_activities} / ${master.count_impressions}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_click
      label: Cost per Click
      expression: "${click.count_clicks} / ${master.dbm_revenue}"
      value_format:
      value_format_name: usd
      _kind_hint: measure
      _type_hint: number
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields:
    - master.count_impressions
    - click.count_clicks
    - activity.count_activities
    - master.dbm_revenue
    series_colors:
      total_impressions: "#3B4260"
      conversion_rate: "#39A736"
      cost_per_click: "#3B4260"
    y_axes:
    - label: ''
      maxValue: 1.5
      minValue: 0
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: custom
      tickDensityCustom: '11'
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: cost_per_click
        name: Cost per Click
        axisId: cost_per_click
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: conversion_rate
        name: Conversion Rate
        axisId: conversion_rate
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: click_through_rate
        name: Click Through Rate
        axisId: click_through_rate
    label_color: []
    hidden_series: []
    row: 10
    col: 12
    width: 12
    height: 7
  - title: Conversions by Site
    name: Conversions by Site
    model: doubleclick_demo
    explore: master
    type: looker_column
    fields:
    - activity.count_activities
    - match_table_sites.site_dcm
    sorts:
    - activity.count_activities desc
    limit: 10
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 3
    col: 17
    width: 7
    height: 7
  - title: Campaign Performance
    name: Campaign Performance
    model: doubleclick_demo
    explore: master
    type: looker_bar
    fields:
    - master.count_impressions
    - click.count_clicks
    - activity.count_activities
    - match_table_campaigns.campaign_name
    sorts:
    - click.count_clicks desc
    limit: 10
    dynamic_fields:
    - table_calculation: click_through_rate
      label: Click Through Rate
      expression: "${click.count_clicks} / ${master.count_impressions}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate
      label: Conversion Rate
      expression: "${activity.count_activities} / ${click.count_clicks}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_impressions
      label: Total Impressions
      expression: "${master.count_impressions}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: monotone
    series_types:
      click_through_rate: line
      conversion_rate: line
    hidden_fields:
    - master.count_impressions
    - click.count_clicks
    - activity.count_activities
    series_colors:
      total_impressions: "#3B4260"
      conversion_rate: "#39A736"
    y_axes:
    - label:
      maxValue:
      minValue:
      orientation: top
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: conversion_rate
        name: Conversion Rate
        axisId: conversion_rate
    - label:
      maxValue:
      minValue:
      orientation: top
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: click_through_rate
        name: Click Through Rate
        axisId: click_through_rate
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: total_impressions
        name: Total Impressions
        axisId: total_impressions
    label_color:
    - "#1D98D3"
    - "#39A736"
    - "#fff"
    listen:
      Date: master.impression_date
    row: 17
    col: 0
    width: 12
    height: 15
  - title: Campaign Performance (Full Detail)
    name: Campaign Performance (Full Detail)
    model: doubleclick_demo
    explore: master
    type: table
    fields:
    - match_table_campaigns.campaign_name
    - master.count_impressions
    - click.count_clicks
    - activity.count_activities
    - master.count_users
    - master.dbm_revenue
    filters:
      master.impression_date: after 2017/10/01
    sorts:
    - click.count_clicks desc
    limit: 30
    column_limit: 50
    dynamic_fields:
    - table_calculation: click_through_rate
      label: Click Through Rate
      expression: "${click.count_clicks} / ${master.count_impressions}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate
      label: Conversion Rate
      expression: "${activity.count_activities} / ${click.count_clicks}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: monotone
    series_types: {}
    hidden_fields:
    series_colors:
      total_impressions: "#3B4260"
      conversion_rate: "#39A736"
    y_axes:
    - label:
      maxValue:
      minValue:
      orientation: top
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: conversion_rate
        name: Conversion Rate
        axisId: conversion_rate
    - label:
      maxValue:
      minValue:
      orientation: top
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: click_through_rate
        name: Click Through Rate
        axisId: click_through_rate
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: total_impressions
        name: Total Impressions
        axisId: total_impressions
    label_color:
    - "#1D98D3"
    - "#39A736"
    - "#fff"
    row: 17
    col: 12
    width: 12
    height: 15
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: after 2017/10/01
    model: doubleclick_demo
    explore: master
    field: master.impression_date
    listens_to_filters: []
    allow_multiple_values: true
    required: false
