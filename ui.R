library(datasets)
library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Esophageal cancer risk"),
  sidebarPanel(
    h3('Data from a case-control study of esophageal cancer in Ille-et-Vilaine, France.'),
    h3(' '),
    h4('Please only check only one checkbox under each heading.'),
    checkboxGroupInput("age range", "Age range:",
                       c("25-34"="25-34",
                         "35-44"="35-44",
                         "45-54"="45-54",
                         "55-64"="55-64",
                         "65-74"="65-74",
                         "75+"="75+"), selected="25-34"),
    checkboxGroupInput("alcohol intake", "Alcohol intake:",
                       c("0-39g/day"="0-39g/day",
                         "40-79"="40-79",
                         "80-119"="80-119",
                         "120+"="120+"), selected="0-39g/day"),
    checkboxGroupInput("tobacco intake", "Tobacco intake:",
                       c("0-9g/day"="0-9g/day",
                         "10-19"="10-19",
                         "20-29"="20-29",
                         "30+"="30+"), selected="0-9g/day")
  ),
  mainPanel(
    h3('Results of Prediction'),
    h4('You entered:'),
    verbatimTextOutput("oid1"),
    verbatimTextOutput("oid2"),
    verbatimTextOutput("oid3"),
    h4('Which resulted in a risk for esophageal cancer of:'),
    verbatimTextOutput("prediction")
  )
))
