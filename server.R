#EventViz is released under the MIT License (MIT)
#Copyright (c) 2015 Russ McRee, HolisticInfoSec

library(shiny)

# Define a server for the Shiny app

setwd("C:/coding/R/apps/EventViz")
df <- read.csv("sysmon.csv",header=FALSE,skip=1,row.names=NULL,stringsAsFactors=FALSE,sep=",",
               col.names=c("Level","DateTime","Source","EventID","TaskCategory","Message"))

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
