view: match_table_activity_types {
  sql_table_name: `ekoblov-test.dcm1684.match_table_activity_types_1684` ;;

  dimension: _data {
    hidden: yes
    sql: ${TABLE}._DATA_DATE ;;
  }

  dimension: _latest {
    hidden: yes
    sql: ${TABLE}._LATEST_DATE ;;
  }

  dimension: activity_group {
    type: string
    sql: ${TABLE}.Activity_Group ;;
  }

  dimension: activity_group_id {
    type: string
    sql: ${TABLE}.Activity_Group_ID ;;
  }

  dimension: activity_type {
    type: string
    sql: ${TABLE}.Activity_Type ;;
  }

  dimension: floodlight_configuration {
    type: string
    sql: ${TABLE}.Floodlight_Configuration ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: []
  }
}


view: match_table_ad_placement_assignments {
  sql_table_name: `ekoblov-test.dcm1684.match_table_ad_placement_assignments_1684`  ;;

  dimension: _data {
    hidden: yes
    sql: ${TABLE}._DATA_DATE ;;
  }

  dimension: _latest {
    hidden: yes
    sql: ${TABLE}._LATEST_DATE ;;
  }

  dimension: ad_id {
    type: string
    sql: ${TABLE}.Ad_ID ;;
  }

  dimension: placement_id {
    type: string
    sql: ${TABLE}.Placement_ID ;;
  }

  dimension: pk {
    hidden: yes
    primary_key: yes
    sql: CONCAT(${ad_id},'-',${placement_id}) ;;
  }
}


view: match_table_ads {
  sql_table_name: `ekoblov-test.dcm1684.match_table_ads_1684` ;;

  dimension: _data {
    hidden: yes
    sql: ${TABLE}._DATA_DATE ;;
  }

  dimension: _latest {
    hidden: yes
    sql: ${TABLE}._LATEST_DATE ;;
  }

  dimension: ad_name {
    type: string
    sql: ${TABLE}.Ad ;;
  }

  dimension: ad_click_url {
    type: string
    sql: ${TABLE}.Ad_Click_URL ;;
  }

  dimension: ad_comments {
    type: string
    sql: ${TABLE}.Ad_Comments ;;
  }

  dimension: ad_id {
    hidden: yes
    type: string
    sql: ${TABLE}.Ad_ID ;;
  }

  dimension: ad_type {
    type: string
    sql: ${TABLE}.Ad_Type ;;
  }

  dimension: advertiser_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Advertiser_ID ;;
  }

  dimension: campaign_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Campaign_ID ;;
  }

  dimension: creative_pixel_size {
    type: string
    sql: ${TABLE}.Creative_Pixel_Size ;;
  }
}


view: match_table_advertisers {
  sql_table_name: `ekoblov-test.dcm1684.match_table_advertisers_1684`  ;;

  dimension: _data {
    hidden: yes
    sql: ${TABLE}._DATA_DATE ;;
  }

  dimension: _latest {
    hidden: yes
    sql: ${TABLE}._LATEST_DATE ;;
  }

  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.Advertiser ;;
  }

  dimension: advertiser_group {
    type: string
    sql: ${TABLE}.Advertiser_Group ;;
  }

  dimension: advertiser_group_id {
    type: string
    sql: ${TABLE}.Advertiser_Group_ID ;;
  }

  dimension: advertiser_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Advertiser_ID ;;
  }

  dimension: floodlight_configuration {
    type: string
    sql: ${TABLE}.Floodlight_Configuration ;;
  }
}


view: match_table_browsers {
  sql_table_name: `ekoblov-test.dcm1684.match_table_browsers_1684` ;;

  dimension: _data {
    hidden: yes
    sql: ${TABLE}._DATA_DATE ;;
  }

  dimension: _latest {
    hidden: yes
    sql: ${TABLE}._LATEST_DATE ;;
  }

  dimension: browser_platform {
    type: string
    sql: ${TABLE}.Browser_Platform ;;
  }

  dimension: browser_platform_id {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.Browser_Platform_ID ;;
  }
}


view: match_table_campaigns {
  sql_table_name: `ekoblov-test.dcm1684.match_table_campaigns_1684` ;;

  dimension: _data {
    hidden: yes
    sql: ${TABLE}._DATA_DATE ;;
  }

  dimension: _latest {
    hidden: yes
    sql: ${TABLE}._LATEST_DATE ;;
  }

  dimension: advertiser_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Advertiser_ID ;;
  }

  dimension: billing_invoice_code {
    type: string
    sql: ${TABLE}.Billing_Invoice_Code ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.Campaign ;;
    link: {
      label: "Campaign Lookup Dashboard"
      url: "/dashboards/139?Campaign={{ match_table_campaigns.campaign_name._value }}"
    }
  }

  dimension_group: campaign_end {
    type: time
    datatype: yyyymmdd
    timeframes: [date, week, month, year]
    sql: ${TABLE}.Campaign_End_Date ;;
  }

  dimension: campaign_id {
    hidden: yes
    type: string
    sql: ${TABLE}.Campaign_ID ;;
  }

  dimension_group: campaign_start {
    type: time
    datatype: yyyymmdd
    timeframes: [date, week, month, year]
    sql: ${TABLE}.Campaign_Start_Date ;;
  }

  dimension_group: campaign_launch {
    type: time
    timeframes: [date, week, month, year]
    sql: TIMESTAMP(${TABLE}.Campaign_Start_Date) ;;
  }

  dimension: days_running {
    type: number
    sql: DATE_DIFF(CURRENT_DATE() , ${campaign_start_date}, DAY) ;;
  }

}


view: match_table_cities {
  sql_table_name:  `ekoblov-test.dcm1684.match_table_cities_1684`  ;;

  dimension: _data {
    hidden: yes
    sql: ${TABLE}._DATA_DATE ;;
  }

  dimension: _latest {
    hidden: yes
    sql: ${TABLE}._LATEST_DATE ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: city_id {
    type: string
    sql: ${TABLE}.City_ID ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: []
  }
}


view: match_table_sites {
  sql_table_name: `ekoblov-test.dcm1684.match_table_sites_1684` ;;

  dimension: _data {
    hidden: yes
    sql: ${TABLE}._DATA_DATE ;;
  }

  dimension: _latest {
    hidden: yes
    sql: ${TABLE}._LATEST_DATE ;;
  }

  dimension: website_name {
    description: "The specific webpage with the ad Displayed"
    type: string
    sql: ${TABLE}.Site_DCM ;;
  }

  dimension: site_id_dcm {
    type: string
    sql: ${TABLE}.Site_ID_DCM ;;
  }

  dimension: site_id_site_directory {
    type: string
    hidden: yes
    sql: ${TABLE}.Site_ID_Site_Directory ;;
  }

  dimension: parent_website_name {
    description: "Univeral (master) website, under which website_name wraps"
    type: string
    sql: ${TABLE}.Site_Site_Directory ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
