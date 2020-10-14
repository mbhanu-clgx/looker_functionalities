view: looker_demo {
  sql_table_name: `clgx-idap-bigquery-dev-71f0.prodreporting.looker_demo`
    ;;

  dimension: all {
    type: string
    sql: ${TABLE}.`all` ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.Date ;;
  }

  dimension: index_type {
    type: string
    sql: ${TABLE}.Index_Type ;;
  }

  dimension: tier1 {
    type: string
    sql: ${TABLE}.tier1 ;;
  }

  dimension: tier2 {
    type: string
    sql: ${TABLE}.tier2 ;;
  }

  dimension: tier3 {
    type: string
    sql: ${TABLE}.tier3 ;;
  }

  dimension: tier4 {
    type: string
    sql: ${TABLE}.tier4 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
