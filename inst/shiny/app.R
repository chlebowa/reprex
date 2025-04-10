library(shiny)

ui <- fluidPage(
  column(3, textInput("text", "some text"), textOutput("print"))
)

server <- function(input, output, session) {
  text <- reactive({ input$text })
  output[["print"]] <- renderText({ req(text()) })
}

shinyApp(ui, server)
