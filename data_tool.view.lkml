 view: data_tool {
   derived_table: {
     sql:
        SELECT
          CAST(TIMESTAMP_SECONDS(CAST(master.Event_Time/1000000 as INT64)) AS DATE) AS master_event_date,
          COUNT(DISTINCT (concat(master.Ad_ID, master.Advertiser_ID, master.User_ID, cast(master.Event_Time as string), master.Event_Type, master.Rendering_ID, (CASE WHEN master.DBM_Line_Item_ID IS NULL THEN 'pk_id'
                ELSE CAST(master.DBM_Line_Item_ID as STRING)
                END))) ) AS master_count_impressions,
          COUNT(DISTINCT (concat(click.Ad_ID, click.Advertiser_ID, click.User_ID, cast(click.Event_Time as string), click.Event_Type, click.Rendering_ID)) ) AS click_count_clicks,
          COALESCE(SUM(CASE WHEN (activity.Event_Sub_Type = 'POSTCLICK') THEN activity.Total_Conversions  ELSE NULL END), 0) AS activity_postclick_conversion,
          COALESCE(SUM(CASE WHEN (activity.Event_Sub_Type = 'POSTVIEW') THEN activity.Total_Conversions  ELSE NULL END), 0) AS activity_postview_conversion,
          COALESCE(SUM((master.DBM_Total_Media_Cost_USD / 1000000000) ), 0) AS master_dbm_total_media_cost
        FROM `ekoblov-test.dcm1684.impression_1684`   AS master
        LEFT JOIN `ekoblov-test.dcm1684.click_1684`  AS click ON master.DBM_Auction_ID = click.DBM_Auction_ID
        LEFT JOIN `ekoblov-test.dcm1684.activity_1684`  AS activity ON master.DBM_Auction_ID = activity.DBM_Auction_ID

        GROUP BY 1 ;;
  }

  dimension_group: date {
    label: "Event"
    type: time
    sql: TIMESTAMP(${TABLE}.master_event_date) ;;
    timeframes: [date, week, month]
  }

  parameter: primary_metric_name {
    type: unquoted
    default_value: "Impressions"
    allowed_value: {
      value: "master_count_impressions"
      label: "Impressions"
    }
    allowed_value: {
      value: "click_count_clicks"
      label: "Clicks"
    }
    allowed_value: {
      value: "activity_postclick_conversion"
      label: "Postclick Conversion"
    }
    allowed_value: {
      value: "activity_postview_conversion"
      label: "Postview Conversion"
    }
    allowed_value: {
      value: "master_dbm_total_media_cost"
      label: "Total Media Cost"
    }
  }

  parameter: second_metric_name {
    type: unquoted
    default_value: "Clicks"
    allowed_value: {
      value: "master_count_impressions"
      label: "Impressions"
    }
    allowed_value: {
      value: "click_count_clicks"
      label: "Clicks"
    }
    allowed_value: {
      value: "activity_postclick_conversion"
      label: "Postclick Conversion"
    }
    allowed_value: {
      value: "activity_postview_conversion"
      label: "Postview Conversion"
    }
    allowed_value: {
      value: "master_dbm_total_media_cost"
      label: "Total Media Cost"
    }
  }

  measure: primary_metric {
    sql: ${TABLE}.{% parameter primary_metric_name %};;
    type: sum
    label_from_parameter: primary_metric_name
    value_format_name: decimal_2
  }

  measure: second_metric {
    sql:  ${TABLE}.{% parameter second_metric_name %};;
    type: sum
    label_from_parameter: second_metric_name
    value_format_name: decimal_2
  }

 }
