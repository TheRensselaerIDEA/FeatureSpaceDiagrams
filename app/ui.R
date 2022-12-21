
fluidPage(
  fileInput(inputId = "file", label = "CSV Data File", accept = ".csv"),
  selectInput("cor_method", "Correlation Method:",
              choices = c("pearson", "spearman", "kendall")),
  sliderInput(inputId = "line_threshold", label = "Distance Threshold", value = 5.5,  min = 0, max = 10, step = 0.1),
  plotOutput("feature_plot")
)
