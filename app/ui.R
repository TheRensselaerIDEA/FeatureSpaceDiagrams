
fluidPage(
  fileInput(inputId = "file", label = "CSV Data File", accept = ".csv"),
  selectInput("cor_method", "Correlation Method:",
              choices = c("pearson", "spearman", "kendall")),
  sliderInput(inputId = "line_threshold", label = "Distance Threshold", value = 0.5,  min = 0, max = 1, step = 0.1),
  plotlyOutput("feature_plot")
)
