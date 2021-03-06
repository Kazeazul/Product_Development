library(shiny)
library(DT)


shinyUI(fluidPage(
    titlePanel("Gráficas en Shiny"),
    tabsetPanel(
        tabPanel("Plot",
                 h1("Gráficas en Shiny"),
                 h2("Gráfica con base de R"),
                 plotOutput("grafica_base_r"),
                 h2("Gráfica con ggplot"),
                 plotOutput("grafica_ggplot")),
        tabPanel("Lab 2",
                 plotOutput("plot_click_options",
                            click = "clk",
                            dblclick = "dclk",
                            hover = "mhover",
                            brush = "mbrush"),
                 verbatimTextOutput("click_data"),
                 DT::dataTableOutput('mtcars_out')
        )
    )
)
)