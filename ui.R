#
# This is the user-interface definition of a Shiny web application. 
# 
# Sample size calculation
#

library(shiny)
# Define UI for application that draws a histogram
shinyUI(fluidPage(
      titlePanel("Sample Size Calculation"),
      sidebarLayout(
        sidebarPanel(
          sliderInput("mean1", "Group 1 Mean:", min = 0, max = 40, value = 20, step = 0.1),
          sliderInput("var1", "Group 1 Variance:", min = 0, max = 20, value = 1, step = 0.1),
          sliderInput("mean2", "Group 2 Mean:", min = 0, max = 40, value = 25, step = 0.1),
          sliderInput("alpha", "Alpha (Significance Level):", min = 0, max = 0.1, value = 0.05, step = 0.01),
          sliderInput("power", "Power (1-Beta):", min = 0, max = 1, value = 0.8, step = 0.01),
          submitButton("Submit")
          ),
        mainPanel(
          textOutput("sampleSize"),
          plotOutput("distributionPlot")
        )
      )
      # sidebarLayout(
      #     sidebarPanel(
      #       numericInput("mean1", "Group 1 Mean:", value = 0, step = 0.1),
      #       numericInput("var1", "Group 1 Variance:", value = 1, step = 0.1),
      #       numericInput("mean2", "Group 2 Mean:", value = 1, step = 0.1),
      #       numericInput("alpha", "Alpha:", value = 0.05, min = 0, max = 1, step = 0.01),
      #       numericInput("power", "Power:", value = 0.8, min = 0, max = 1, step = 0.01)
      #     ),
      # 
      #     # Show a plot of the generated distribution
      #     mainPanel(
      #         textOutput("sampleSize"),
      #         plotOutput("distributionPlot")
      #     )
      # )
  )
)