
view: jh_covid_values_summary {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql:
    SELECT *,
    ROW_NUMBER() OVER(PARTITION BY date ORDER BY confirmed DESC) AS confirmed_rn,
    ROW_NUMBER() OVER(PARTITION BY date ORDER BY confirmed_new_cases DESC) AS confirmed_new_cases_rn,
    ROW_NUMBER() OVER(PARTITION BY date ORDER BY deaths DESC) AS deaths_rn,
    ROW_NUMBER() OVER(PARTITION BY date ORDER BY deaths_new_cases DESC) AS deaths_new_cases_rn
    FROM (
      SELECT
        {% if date_month.is_selected %}
          DATE_TRUNC(date, MONTH)
        {% elsif date_week.is_selected %}
          DATE_TRUNC(date, WEEK)
        {% else %}
          date
        {% endif %} AS date,
          province_state,
          SUM(deaths_new_cases) AS death_new_cases,
          SUM(deats) AS deaths,
          SUM(confirmed) AS confirmed,
          SUM(confirmed_new_cases) AS confirmed_new_cases
        FROM `lookerdata.covid19_gcp_14day_predictions.jhu_covid_values`
        GROUP BY 1,2
      )
      ;;
  }

  measure: confirmed {
    type: sum
    sql: ${TABLE}.confirmed ;;
  }

  measure: confirmed_new_cases {
    type: sum
    sql: ${TABLE}.confirmed_new_cases ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month
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
  measure: province_state_measure {
    type: string
    sql:  ${province_state} ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}.province_state ;;
  }

  dimension: confirmed_rn {
    type: number
    sql: ${TABLE}.confirmed_rn ;;
  }

  dimension: confirmed_new_cases_rn {
    type: number
    sql: ${TABLE}.confirmed_new_cases_rn ;;
  }
  dimension: deaths_rn {

    type: number
    sql: ${TABLE}.deaths_rn ;;
  }

  dimension: deaths_new_cases_rn {
    type: number
    sql: ${TABLE}.deaths_new_cases_rn ;;
  }
}
