library(shiny)

shinyUI(fluidPage(
      titlePanel("Prediction of Children's Height"),
      sidebarLayout(
            sidebarPanel(
                  helpText("Prediction of height considering parent's height and gender"),
                  helpText("Parameter"),
                  sliderInput(inputId = "inFh",
                              label = "Height of father:",
                              value = 150,
                              min = 150,
                              max = 220,
                              step = 1),
                  sliderInput(inputId = "inMh",
                              label = "Height of mother",
                              value = 140,
                              min = 140,
                              max = 200,
                              step = 1),
                  radioButtons(inputId = "inGen",
                               label = "Gender: ",
                               choices = c("Female"="female", "Male"="male"),
                               inline = TRUE)
            ),
            
            mainPanel(
                  htmlOutput("pText"),
                  htmlOutput("pred"),
                  plotOutput("Plot", width = "50%")
            )
      )
))