view: advertiser_reachby_site {
  sql_table_name: DIGIT_30602_4728824.AdvertiserReachbySite ;;

  dimension: _10_cookie_reach_impression_reach {
    type: number
    sql: ${TABLE}._10_cookieReachImpressionReach ;;
  }

  dimension: _11_cookie_reach_impression_reach {
    type: number
    sql: ${TABLE}._11_cookieReachImpressionReach ;;
  }

  dimension: _12_cookie_reach_impression_reach {
    type: number
    sql: ${TABLE}._12_cookieReachImpressionReach ;;
  }

  dimension: _13_cookie_reach_impression_reach {
    type: number
    sql: ${TABLE}._13_cookieReachImpressionReach ;;
  }

  dimension: _14_cookie_reach_impression_reach {
    type: number
    sql: ${TABLE}._14_cookieReachImpressionReach ;;
  }

  dimension: _15_cookie_reach_impression_reach {
    type: number
    sql: ${TABLE}._15_cookieReachImpressionReach ;;
  }

  dimension: _16_cookie_reach_impression_reach {
    type: number
    sql: ${TABLE}._16_cookieReachImpressionReach ;;
  }

  dimension: _1_cookie_reach_impression_reach {
    type: number
    sql: ${TABLE}._1_cookieReachImpressionReach ;;
  }

  dimension: _2_cookie_reach_impression_reach {
    type: number
    sql: ${TABLE}._2_cookieReachImpressionReach ;;
  }

  dimension: _3_cookie_reach_impression_reach {
    type: number
    sql: ${TABLE}._3_cookieReachImpressionReach ;;
  }

  dimension: _4_cookie_reach_impression_reach {
    type: number
    sql: ${TABLE}._4_cookieReachImpressionReach ;;
  }

  dimension: _5_cookie_reach_impression_reach {
    type: number
    sql: ${TABLE}._5_cookieReachImpressionReach ;;
  }

  dimension: _6_cookie_reach_impression_reach {
    type: number
    sql: ${TABLE}._6_cookieReachImpressionReach ;;
  }

  dimension: _7_cookie_reach_impression_reach {
    type: number
    sql: ${TABLE}._7_cookieReachImpressionReach ;;
  }

  dimension: _8_cookie_reach_impression_reach {
    type: number
    sql: ${TABLE}._8_cookieReachImpressionReach ;;
  }

  dimension: _9_cookie_reach_impression_reach {
    type: number
    sql: ${TABLE}._9_cookieReachImpressionReach ;;
  }

  dimension: active_view_eligible_impressions {
    type: number
    sql: ${TABLE}.activeViewEligibleImpressions ;;
  }

  dimension: active_view_measurable_impressions {
    type: number
    sql: ${TABLE}.activeViewMeasurableImpressions ;;
  }

  dimension: active_view_viewable_impressions {
    type: number
    sql: ${TABLE}.activeViewViewableImpressions ;;
  }

  dimension: advertiser {
    type: string
    sql: ${TABLE}.Advertiser ;;
  }

  dimension: advertiser_id {
    type: number
    sql: ${TABLE}.advertiserId ;;
  }

  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.advertiserName ;;
  }

  dimension: cookie_reach_average_impression_frequency {
    type: number
    sql: ${TABLE}.cookieReachAverageImpressionFrequency ;;
  }

  dimension: cookie_reach_impression_reach {
    type: number
    sql: ${TABLE}.cookieReachImpressionReach ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.site ;;
  }

  measure: count {
    type: count
    drill_fields: [advertiser_name]
  }
}
