project_name: "bar-chart-race-sample"

constant: VIS_LABEL {
  value: "BarChartRace"
  export: override_optional
}

constant: VIS_ID {
  value: "bar-chart-race"
  export:  override_optional
}

visualization: {
  id: "@{VIS_ID}"
  url: "https://localhost:3443/myCustomViz.js"
  label: "@{VIS_LABEL}"
}
