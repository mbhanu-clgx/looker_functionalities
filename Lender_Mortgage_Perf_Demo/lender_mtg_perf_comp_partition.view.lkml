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
    label: "State"
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

  parameter: date_filter {
    type: unquoted
    allowed_value: {
      label: "Year"
      value: "Year"
    }
    allowed_value: {
      label: "Month"
      value: "Month"
    }
    allowed_value: {
      label: "Day"
      value: "Day"
    }
  }

  dimension: Date_Dimension {
    type: string
    sql: case when '{% parameter date_filter %}' = 'Year' then CAST(EXTRACT(YEAR FROM datepartition) AS STRING)
              when '{% parameter date_filter %}' = 'Month' then CAST(FORMAT_DATETIME("%B", datepartition) AS STRING)
              when '{% parameter date_filter %}' = 'Day' then CAST(EXTRACT(DAY FROM datepartition) AS STRING)
              --${TABLE}.year_number||'/'||${TABLE}.month_number||'/' ||${TABLE}.day_number_in_month
              end ;;

    }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_loans {
    type: sum
    sql: ${no_of_loans} ;;
    value_format: "#,##0,,\" M\""
  }

  measure: total_loan_amount {
    type: sum
    sql: ${loan_amount} ;;
    value_format: "$#,##0,,,\" B\""

  }
}
