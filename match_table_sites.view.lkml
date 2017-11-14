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

  dimension: site_dcm {
    type: string
    sql: ${TABLE}.Site_DCM ;;
  }

  dimension: site_id_dcm {
    type: string
    sql: ${TABLE}.Site_ID_DCM ;;
  }

  dimension: site_id_site_directory {
    type: string
    sql: ${TABLE}.Site_ID_Site_Directory ;;
  }

  dimension: site_site_directory {
    type: string
    sql: ${TABLE}.Site_Site_Directory ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
