
function(input, output) {
  output$feature_plot = renderPlotly({
    req(input$file)
    ggplotly(
      plot_gen(mydata = read.csv(input$file$datapath) %>% dplyr::select(where(is.numeric)), cor_method = input$cor_method, threshold = input$line_threshold), height = 800
    )
  })
}