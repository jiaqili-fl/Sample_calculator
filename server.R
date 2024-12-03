#
# Sample size calculation

library(shiny)
library(tidyverse)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    calculateSampleSize <- reactive({
    z_alpha <- qnorm(1 - input$alpha / 2)
    z_beta <- qnorm(input$power)
    mean_diff <- abs(input$mean1 - input$mean2)
    pooled_var <- input$var1 + input$var1  
    
    n <- ((z_alpha + z_beta)^2 * pooled_var) / mean_diff^2
    ceiling(n)  
  })
  
  output$sampleSize <- renderText({
    n <- calculateSampleSize()
    paste("Required Sample Size per Group: ", n)
  })
  
    output$distributionPlot <- renderPlot({
      n <- calculateSampleSize()
      x <- seq(-5, 55, length.out = 1000)
      group1 <- dnorm(x, mean = input$mean1, sd = sqrt(input$var1 / n))
      group2 <- dnorm(x, mean = input$mean2, sd = sqrt(input$var1 / n))
      
      data <- data.frame(
        x = rep(x, 2),
        y = c(group1, group2),
        Group = rep(c("Group 1", "Group 2"), each = length(x))
      )
      
      ggplot(data, aes(x = x, y = y, color = Group)) +
        geom_line(size = 1) +
        labs(title = "Group Distributions", x = "Value", y = "Density") +
        theme_minimal()
    })
  }
)