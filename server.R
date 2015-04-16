#EventViz is released under the MIT License (MIT)
#Copyright (c) 2015 Russ McRee, HolisticInfoSec
#EventViz v0.1 - 5 FEB 2015
#EventViz v0.2 - 15 APR 2015

library(shiny)
library(readr)

# Define a server for the Shiny app

setwd("C:/coding/R/apps/EventViz")
df <- read_csv("sysmon.csv", col_names=c("Level","DateTime","Source","EventID","TaskCategory","Message"))

shinyServer(function(input, output) {
        
        # Filter data based on selections
        output$table <- renderDataTable({
                data <- df
                if (input$Level != "All"){
                        data <- data[data$Level == input$Level,]
                }
                if (input$DateTime != "All"){
                        data <- data[data$DateTime == input$DateTime,]
                }
                if (input$Source != "All"){
                        data <- data[data$Source == input$Source,]
                }
                if (input$EventID != "All"){
                        data <- data[data$EventID == input$EventID,]
                }
                if (input$TaskCategory != "All"){
                        data <- data[data$TaskCategory == input$TaskCategory,]
                }
                if (input$Message != "All"){
                        data <- data[data$Message == input$Message,]
                }
                data
        })
        
})
