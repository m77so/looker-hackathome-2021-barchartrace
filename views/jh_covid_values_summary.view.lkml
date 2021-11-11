
view: jh_covid_values_summary {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql:
    WITH im AS (
      SELECT "Alaska" as province_state, "https://m77so.github.io/looker-hackathon-2021-js/us-h80/ak.png" as image_url
      union all
      SELECT "Alaska", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/ak.png" union all
SELECT "Arizona", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/az.png" union all
SELECT "Arkansas", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/ar.png" union all
SELECT "California", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/ca.png" union all
SELECT "Colorado", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/co.png" union all
SELECT "Connecticut", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/ct.png" union all
SELECT "Delaware", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/de.png" union all
SELECT "District of Columbia", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/dc.png" union all
SELECT "Florida", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/fl.png" union all
SELECT "Georgia", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/ga.png" union all
SELECT "Hawaii", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/hi.png" union all
SELECT "Idaho", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/id.png" union all
SELECT "Illinois", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/il.png" union all
SELECT "Indiana", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/in.png" union all
SELECT "Iowa", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/ia.png" union all
SELECT "Kansas", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/ks.png" union all
SELECT "Kentucky", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/ky.png" union all
SELECT "Louisiana", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/la.png" union all
SELECT "Maine", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/me.png" union all
SELECT "Maryland", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/md.png" union all
SELECT "Massachusetts", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/ma.png" union all
SELECT "Michigan", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/mi.png" union all
SELECT "Minnesota", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/mn.png" union all
SELECT "Mississippi", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/ms.png" union all
SELECT "Missouri", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/mo.png" union all
SELECT "Montana", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/mt.png" union all
SELECT "Nebraska", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/ne.png" union all
SELECT "Nevada", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/nv.png" union all
SELECT "New Hampshire", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/nh.png" union all
SELECT "New Jersey", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/nj.png" union all
SELECT "New Mexico", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/nm.png" union all
SELECT "New York", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/ny.png" union all
SELECT "North Carolina", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/nc.png" union all
SELECT "North Dakota", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/nd.png" union all
SELECT "Ohio", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/oh.png" union all
SELECT "Oklahoma", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/ok.png" union all
SELECT "Oregon", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/or.png" union all
SELECT "Pennsylvania", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/pa.png" union all
SELECT "Rhode Island", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/ri.png" union all
SELECT "South Carolina", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/sc.png" union all
SELECT "South Dakota", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/sd.png" union all
SELECT "Tennessee", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/tn.png" union all
SELECT "Texas", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/tx.png" union all
SELECT "Utah", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/ut.png" union all
SELECT "Vermont", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/vt.png" union all
SELECT "Virginia", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/va.png" union all
SELECT "Washington", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/wa.png" union all
SELECT "West Virginia", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/wv.png" union all
SELECT "Wisconsin", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/wi.png" union all
SELECT "Wyoming", "https://m77so.github.io/looker-hackathon-2021-js/us-h80/wy.png"
    )

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
          SUM(deaths_new_cases) AS deaths_new_cases,
          SUM(deaths) AS deaths,
          SUM(confirmed) AS confirmed,
          SUM(confirmed_new_cases) AS confirmed_new_cases
        FROM `lookerdata.covid19_gcp_14day_predictions.jhu_covid_values`
        GROUP BY 1,2
      )
      JOIN im USING (province_state)

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
    sql: STRING_AGG(${TABLE}.province_state) ;;
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
