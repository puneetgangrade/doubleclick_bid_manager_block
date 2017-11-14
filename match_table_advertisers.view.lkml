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
