view: jhu_covid_values {
  sql_table_name: `lookerdata.covid19_gcp_14day_predictions.jhu_covid_values`
    ;;

  dimension: confirmed {
    type: number
    sql: ${TABLE}.confirmed ;;
  }

  dimension: confirmed_new_cases {
    type: number
    sql: ${TABLE}.confirmed_new_cases ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  measure: deaths {

    type: sum
    sql: ${TABLE}.deaths ;;
  }

  measure: deaths_new_cases {
    type: sum
    sql: ${TABLE}.deaths_new_cases ;;
  }

  dimension: fips {
    type: string
    sql: ${TABLE}.fips ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}.province_state ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
