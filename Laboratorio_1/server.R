library(shiny)
library(lubridate)

shinyServer(function(input, output) {
    output$slider_io <- renderText({
        input$Slider_input
    })
    output$slider_io_2 <- renderText({
      input$Slider_input_2
    })
    output$select_io <- renderText({
      input$select_input
    })
    output$select_io_multi <- renderText({
      input$select_input_2
    })
    
    output$date_io <- renderPrint({
      input$date_input
    })
    
    output$range_io <- renderText({
      fecha <- paste(input$date_range[1]," to  ",input$date_range[2])
      fecha
    })
    
    output$numeric_io <- renderText({
      input$numeric_input
    })
    output$single_box_io <- renderText({
      input$single_box
    })
    output$multiple_box_io <- renderText({
      input$group_box
    })
    output$radio_io <- renderText({
      input$radio_ex
    })
    output$select_io <- renderText({
      input$select_input
    })
    output$text_io <- renderText({
      input$text_input
    })
    output$text_area_io <- renderText({
      input$text_area
    })
    output$action_bt_io <- renderText({
      input$action_button
    })
    output$action_link_io <- renderText({
      input$action_link
    })
})
