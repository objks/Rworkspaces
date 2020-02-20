library(shiny)

shinyUI(fluidPage(
  titlePanel("Shiny Examples"),
  sidebarLayout(
    sidebarPanel(
      textInput(
        inputId="start",
        label = "Input Start Year :",
        value = "1893"
      ),
      textInput(
        inputId="end",
        label = "Input End Year :",
        value = "2005"
      ),
      sliderInput(
        inputId="alphaSlider",
        label = "alpha",
        min = 0,
        max = 1,
        value = 1,
        step = 0.1
      ),
      checkboxInput(
        inputId="smooth",
        label="With smooth?",
        value = FALSE
      ),
      submitButton(
        "Update View"
      ),
      hr(),
      helpText(
        "Copyright by GilDong"
      )
  ),
  mainPanel(
    tabsetPanel(
      type="tabs",
      tabPanel("Plot", plotOutput("plot")),
      tabPanel("Summary", verbatimTextOutput("summary")),
      tabPanel("Table", dataTableOutput("table"))
    )
  )
  )
)
)