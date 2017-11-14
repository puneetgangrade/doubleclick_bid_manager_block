connection: "doubleclick"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

persist_for: "24 hours"

explore: master {
  from: impression
  label: "Impressions"

  join: click {
    sql_on: ${master.dbm_auction_id} = ${click.dbm_auction_id} ;;
    relationship: many_to_one
  }
  join: activity {
    sql_on: ${master.dbm_auction_id} = ${activity.dbm_auction_id} ;;
    relationship: many_to_one
  }
  join: match_table_ads {
    view_label: "Ads"
    sql_on: ${master.ad_id} = ${match_table_ads.ad_id} AND ${master._data} = ${match_table_ads._data} ;;
    relationship: many_to_one
  }
  join: match_table_campaigns {
    view_label: "Campaigns"
    sql_on: ${master.campaign_id} = ${match_table_campaigns.campaign_id} AND ${master._data} = ${match_table_campaigns._data} ;;
    relationship: many_to_one
  }
  join: match_table_advertisers {
    view_label: "Advertisers"
    sql_on: ${master.advertiser_id} = ${match_table_advertisers.advertiser_id} AND ${master._data} = ${match_table_advertisers._data} ;;
    relationship: many_to_one
  }
  join: match_table_ad_placement_assignments {
    view_label: "Ad Placements"
    sql_on: ${master.ad_id} = ${match_table_ad_placement_assignments.ad_id} AND
      ${master.placement_id} = ${match_table_ad_placement_assignments.placement_id} AND
      ${master._data} = ${match_table_ad_placement_assignments._data} ;;
    relationship: many_to_one
  }
  join: match_table_browsers {
    view_label: "Browsers"
    sql_on: ${master.browser_platform_id} = ${match_table_browsers.browser_platform_id} AND ${master._data} = ${match_table_browsers._data} ;;
    relationship: many_to_one
  }
  join: match_table_sites {
    view_label: "Sites"
    sql_on: ${master.site_id_dcm} = ${match_table_sites.site_id_dcm} AND ${master._data} = ${match_table_browsers._data} ;;
    relationship: many_to_one
  }

}
