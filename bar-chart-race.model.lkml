connection: "lookerdata"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: jhu_covid_values {
  label: "JHU COVID"
}
