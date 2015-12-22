library(shiny)
library(datasets)
data("esoph")

esophRisk<-function(age, alcohol, tobacco) {
  row<-which((esoph$agegp==age)&(esoph$alcgp==alcohol)&(esoph$tobgp==tobacco))
  esophRisk<-round(100*esoph[row, 4]/(esoph[row, 4]+esoph[row, 5]), 1)
  output<-paste0(as.character(esophRisk),"%")
  if (output=="%") {
    output<-"ERROR - NO PATIENTS MET THESE PARAMETERS."
  }
  print(output)
}

shinyServer(
  function(input, output) {
    output$oid1<-renderPrint({input$`age range`})
    output$oid2<-renderPrint({input$`alcohol intake`})
    output$oid3<-renderPrint({input$`tobacco intake`})
    output$prediction<-renderPrint({esophRisk(input$`age range`, input$`alcohol intake`, input$`tobacco intake`)})
  }
)