view: lender_mtg_perf_comp_partition {
  sql_table_name: `clgx-idap-bigquery-dev-71f0.prodreporting.lender_mtg_perf_comp_partition`
    ;;

  dimension: cntycd {
    type: string
    sql: ${TABLE}.cntycd ;;
  }

  dimension_group: datepartition {
    group_label: "Date"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.datepartition ;;
  }

  dimension: lender {
    type: string
    sql: ${TABLE}.lender ;;
  }

  dimension: loan_amount {
    type: number
    sql: ${TABLE}.loan_amount ;;
  }

  dimension: loantype {
    type: string
    sql: ${TABLE}.loantype ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: no_of_loans {
    type: number
    sql: ${TABLE}.no_of_loans ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.quarter ;;
  }

  dimension: situscnty {
    type: string
    sql: ${TABLE}.situscnty ;;
  }

  dimension: situsst {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.situsst ;;
  }

  dimension: transactiontype {
    type: string
    sql: ${TABLE}.transactiontype ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_loans {
    type: sum
    sql: ${no_of_loans} ;;
  }

  measure: total_loan_amount {
    type: sum
    sql: ${loan_amount} ;;
    value_format: "0.000,,\" M\""

  }
}
