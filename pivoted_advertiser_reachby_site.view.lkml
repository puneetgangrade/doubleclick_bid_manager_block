view: pivoted_advertiser_reachby_site {
  sql_table_name: DIGIT_30602_4728824.PivotedAdvertiserReachbySite ;;

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

  dimension: cookie_reach_impression_reach {
    type: number
    sql: ${TABLE}.cookieReachImpressionReach ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.frequency ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: imps_over_cap {
    type: number
    sql: ${TABLE}.impsOverCap ;;
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
