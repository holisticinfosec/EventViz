#EventViz is released under the MIT License (MIT)
#Copyright (c) 2015 Russ McRee, HolisticInfoSec
#EventViz v0.1 - 5 FEB 2015
#EventViz v0.2 - 15 APR 2015

library(shiny)
library(readr)

setwd("C:/coding/R/apps/EventViz")
df <- read_csv("sysmon.csv", col_names=c("Level","DateTime","Source","EventID","TaskCategory","Message"))

# Define UI
shinyUI(
        fluidPage(
                titlePanel("EventViz v0.2"),
                
                # Create new row in UI for selectInputs
                fluidRow(
                        column(width=1, 
                               selectInput("Level", 
                                           "Level:", 
                                           c("All", 
                                             unique(as.character(df$Level))))
                        ),
                        column(width=2, 
                               selectInput("DateTime", 
                                           "Date and Time:", 
                                           c("All", 
                                             unique(as.character(df$DateTime))))
                        ),
                        column(width=2, 
                               selectInput("Source", 
                                           "Source:", 
                                           c("All", 
                                             unique(as.character(df$Source))))
                        ),
                        column(width=1, 
                               selectInput("EventID", 
                                           "Event ID:", 
                                           c("All", 
                                             unique(as.character(df$EventID))))
                        ),
                        column(width=2, 
                               selectInput("TaskCategory", 
                                           "Task Category:", 
                                           c("All", 
                                             unique(as.character(df$TaskCategory))))
                        ),
                        column(width=2, 
                               selectInput("Message", 
                                           "Message:", 
                                           c("All", 
                                             unique(as.character(df$Message))))       
                        )
                ),
                # Create a new row for the table.
                fluidRow(
                        dataTableOutput(outputId="table")
                )    
        )  
)
