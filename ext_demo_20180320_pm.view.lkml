view: ext_demo_20180320_pm {
  sql_table_name: tax_export.ext_demo_20180320_pm ;;

  dimension: addressid {
    type: number
    value_format_name: id
    sql: ${TABLE}.addressid ;;
  }

  dimension: agentname {
    type: string
    sql: ${TABLE}.agentname ;;
  }

  dimension: assm_bathgrade1 {
    type: string
    sql: ${TABLE}.assm_bathgrade1 ;;
  }

  dimension: assm_kitchengrade1 {
    type: string
    sql: ${TABLE}.assm_kitchengrade1 ;;
  }

  dimension: assm_kitchengrade2 {
    type: string
    sql: ${TABLE}.assm_kitchengrade2 ;;
  }

  dimension: bath_grade1 {
    type: string
    sql: ${TABLE}.bath_grade1 ;;
  }

  dimension: bath_grade2 {
    type: string
    sql: ${TABLE}.bath_grade2 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension_group: createdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.createdate ;;
  }

  dimension: datasetidsum {
    type: number
    sql: ${TABLE}.datasetidsum ;;
  }

  dimension: datasource {
    type: string
    sql: ${TABLE}.datasource ;;
  }

  dimension: engineversionid {
    type: number
    value_format_name: id
    sql: ${TABLE}.engineversionid ;;
  }

  dimension: esttype {
    type: number
    sql: ${TABLE}.esttype ;;
  }

  dimension: excavationflag {
    type: number
    sql: ${TABLE}.excavationflag ;;
  }

  dimension: exteriorwall_grade {
    type: string
    sql: ${TABLE}.exteriorwall_grade ;;
  }

  dimension: floor_grade {
    type: string
    sql: ${TABLE}.floor_grade ;;
  }

  dimension: foundation_grade {
    type: string
    sql: ${TABLE}.foundation_grade ;;
  }

  dimension: garagecarport_grade {
    type: string
    sql: ${TABLE}.garagecarport_grade ;;
  }

  dimension: heatingcooling_grade {
    type: string
    sql: ${TABLE}.heatingcooling_grade ;;
  }

  dimension: housetypeid {
    type: string
    sql: ${TABLE}.housetypeid ;;
  }

  dimension: isindustrydata {
    type: number
    sql: ${TABLE}.isindustrydata ;;
  }

  dimension: kitchen_grade1 {
    type: string
    sql: ${TABLE}.kitchen_grade1 ;;
  }

  dimension: kitchen_grade2 {
    type: string
    sql: ${TABLE}.kitchen_grade2 ;;
  }

  dimension: livingarearangename {
    type: string
    sql: ${TABLE}.livingarearangename ;;
  }

  dimension: numfamilies {
    type: number
    sql: ${TABLE}.numfamilies ;;
  }

  dimension: numstories {
    type: number
    sql: ${TABLE}.numstories ;;
  }

  dimension: pif_coverage_a_dwelling_amount {
    type: number
    sql: ${TABLE}.pif_coverage_a_dwelling_amount ;;
  }

  dimension: policyversiontypeid {
    type: string
    sql: ${TABLE}.policyversiontypeid ;;
  }

  dimension: rand {
    type: number
    sql: ${TABLE}.rand ;;
  }

  dimension: rand2 {
    type: number
    sql: ${TABLE}.rand2 ;;
  }

  dimension: rctclientid {
    type: number
    value_format_name: id
    sql: ${TABLE}.rctclientid ;;
  }

  dimension: rctcostrangeid {
    type: string
    sql: ${TABLE}.rctcostrangeid ;;
  }

  dimension: rctcreateuserid {
    type: number
    value_format_name: id
    sql: ${TABLE}.rctcreateuserid ;;
  }

  dimension: rctpolicystatusid {
    type: number
    value_format_name: id
    sql: ${TABLE}.rctpolicystatusid ;;
  }

  dimension: rctpropertyaddress1 {
    type: string
    sql: ${TABLE}.rctpropertyaddress1 ;;
  }

  dimension: rctpropertycounty {
    type: string
    sql: ${TABLE}.rctpropertycounty ;;
  }

  dimension: rctpropertystate {
    type: string
    sql: ${TABLE}.rctpropertystate ;;
  }

  dimension: rctpropertyzip {
    type: number
    sql: ${TABLE}.rctpropertyzip ;;
  }

  dimension: rctstyleidmainhome {
    type: number
    sql: ${TABLE}.rctstyleidmainhome ;;
  }

  dimension: rctupdateuserid {
    type: number
    value_format_name: id
    sql: ${TABLE}.rctupdateuserid ;;
  }

  dimension: replacement_cost {
    type: number
    sql: ${TABLE}.replacement_cost ;;
  }

  dimension: roof_grade {
    type: string
    sql: ${TABLE}.roof_grade ;;
  }

  dimension: statecounty {
    type: string
    sql: ${TABLE}.statecounty ;;
  }

  dimension: totallivingarea {
    type: number
    sql: ${TABLE}.totallivingarea ;;
  }

  dimension_group: updatestatusdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updatestatusdate ;;
  }

  dimension_group: valuationupdatedate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.valuationupdatedate ;;
  }

  dimension: wagetype {
    type: string
    sql: ${TABLE}.wagetype ;;
  }

  dimension: yearbuiltmainhome {
    type: number
    sql: ${TABLE}.yearbuiltmainhome ;;
  }

  dimension: yearbuiltrangename {
    type: string
    sql: ${TABLE}.yearbuiltrangename ;;
  }

  measure: count {
    type: count
    drill_fields: [agentname, yearbuiltrangename, livingarearangename]
  }
}
