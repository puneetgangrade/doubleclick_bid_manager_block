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
