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

explore: impression {
  hidden: yes
  label: "Impressions"
  view_label: "Impressions"

  join: match_table_ads {
    view_label: "Ads"
    sql_on: ${impression.ad_id} = ${match_table_ads.ad_id} AND ${impression._data} = ${match_table_ads._data} ;;
    relationship: many_to_one
  }

  join: match_table_campaigns {
    view_label: "Campaigns"
    sql_on: ${impression.campaign_id} = ${match_table_campaigns.campaign_id} AND ${impression._data} = ${match_table_campaigns._data} ;;
    relationship: many_to_one
  }

  join: match_table_advertisers {
    view_label: "Advertisers"
    sql_on: ${impression.advertiser_id} = ${match_table_advertisers.advertiser_id} AND ${impression._data} = ${match_table_advertisers._data} ;;
    relationship: many_to_one
  }

  join: match_table_ad_placement_assignments {
    view_label: "Ad Placements"
    sql_on: ${impression.ad_id} = ${match_table_ad_placement_assignments.ad_id} AND
      ${impression.placement_id} = ${match_table_ad_placement_assignments.placement_id} AND
      ${impression._data} = ${match_table_ad_placement_assignments._data};;
    relationship: many_to_one
  }

  join: match_table_browsers {
    view_label: "Browsers"
    sql_on: ${impression.browser_platform_id} = ${match_table_browsers.browser_platform_id} AND ${impression._data} = ${match_table_browsers._data} ;;
    relationship: many_to_one
  }
}

explore: impression_funnel {
  join: match_table_campaigns {
    view_label: "Campaigns"
    sql_on: ${impression_funnel.campaign_id} =  ${match_table_campaigns.campaign_id} AND ${match_table_campaigns._latest} = ${match_table_campaigns._data} ;;
    relationship: many_to_one
  }

  join: match_table_ads {
    view_label: "Ads"
    sql_on: ${impression_funnel.ad_id} = ${match_table_ads.ad_id}  AND ${match_table_campaigns._latest} = ${match_table_campaigns._data} ;;
    relationship: many_to_one
  }

  join: match_table_advertisers {
    view_label: "Advertisers"
    sql_on: ${impression_funnel.advertiser_id} = ${match_table_advertisers.advertiser_id}  AND ${match_table_campaigns._latest} = ${match_table_campaigns._data} ;;
    relationship: many_to_one
  }

  join: user_campaign_facts {
    view_label: "Users"
    sql_on: ${impression_funnel.campaign_id} = ${user_campaign_facts.campaign_id} AND ${impression_funnel.user_id} = ${user_campaign_facts.user_id}  AND ${match_table_campaigns._latest} = ${match_table_campaigns._data} ;;
    relationship: many_to_one
  }
}

explore: activity {
  hidden: yes
  label: "Activities"
  view_label: "Activities"

  join: match_table_ads {
    view_label: "Ads"
    sql_on: ${activity.ad_id} = ${match_table_ads.ad_id} AND ${activity._data} = ${match_table_ads._data} ;;
    relationship: many_to_one
  }

  join: match_table_campaigns {
    view_label: "Campaigns"
    sql_on: ${activity.campaign_id} = ${match_table_campaigns.campaign_id} AND ${activity._data} = ${match_table_campaigns._data} ;;
    relationship: many_to_one
  }

  join: match_table_advertisers {
    view_label: "Advertisers"
    sql_on: ${activity.advertiser_id} = ${match_table_advertisers.advertiser_id} AND ${activity._data} = ${match_table_advertisers._data} ;;
    relationship: many_to_one
  }

  join: match_table_ad_placement_assignments {
    view_label: "Ad Placements"
    sql_on: ${activity.ad_id} = ${match_table_ad_placement_assignments.ad_id} AND
      ${activity.placement_id} = ${match_table_ad_placement_assignments.placement_id} AND
      ${activity._data} = ${match_table_ad_placement_assignments._data} ;;
    relationship: many_to_one
  }

  join: match_table_browsers {
    view_label: "Browsers"
    sql_on: ${activity.browser_platform_id} = ${match_table_browsers.browser_platform_id} AND ${activity._data} = ${match_table_browsers._data} ;;
    relationship: many_to_one
  }
}

explore: click {
  hidden: yes
  label: "Clicks"
  view_label: "Clicks"

  join: match_table_ads {
    view_label: "Ads"
    sql_on: ${click.ad_id} = ${match_table_ads.ad_id} AND ${click._data} = ${match_table_ads._data} ;;
    relationship: many_to_one
  }

  join: match_table_campaigns {
    view_label: "Campaigns"
    sql_on: ${click.campaign_id} = ${match_table_campaigns.campaign_id} AND ${click._data} = ${match_table_campaigns._data} ;;
    relationship: many_to_one
  }

  join: match_table_advertisers {
    view_label: "Advertisers"
    sql_on: ${click.advertiser_id} = ${match_table_advertisers.advertiser_id} AND ${click._data} = ${match_table_advertisers._data} ;;
    relationship: many_to_one
  }

  join: match_table_ad_placement_assignments {
    view_label: "Ad Placements"
    sql_on: ${click.ad_id} = ${match_table_ad_placement_assignments.ad_id} AND
          ${click.placement_id} = ${match_table_ad_placement_assignments.placement_id} AND
          ${click._data} = ${match_table_ad_placement_assignments._data} ;;
    relationship: many_to_one
  }

  join: match_table_browsers {
    view_label: "Browsers"
    sql_on: ${click.browser_platform_id} = ${match_table_browsers.browser_platform_id} AND ${click._data} = ${match_table_browsers._data} ;;
    relationship: many_to_one
  }
}
