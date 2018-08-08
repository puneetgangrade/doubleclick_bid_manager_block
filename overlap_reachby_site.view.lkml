view: overlap_reachby_site {
  sql_table_name: DIGIT_30602_4728824.OverlapReachbySite ;;

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

  dimension: cookie_reach_overlap_impression_reach {
    type: number
    sql: ${TABLE}.cookieReachOverlapImpressionReach ;;
  }

  dimension: cookie_reach_overlap_impression_reach_percent {
    type: number
    sql: ${TABLE}.cookieReachOverlapImpressionReachPercent ;;
  }

  dimension: other_site {
    type: string
    sql: ${TABLE}.otherSite ;;
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
