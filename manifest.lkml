project_name: "bar-chart-race-sample"

constant: VIS_LABEL {
  value: "Histogram222"
  export: override_optional
}

constant: VIS_ID {
  value: "histogram-marketplace222"
  export:  override_optional
}

visualization: {
  id: "@{VIS_ID}"
  url: "https://localhost:3443/myCustomViz.js"
  label: "@{VIS_LABEL}"
}
