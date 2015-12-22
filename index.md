---
title: "Risk of Esophageal Cancer"
author: "John J. Como, MD, MPH"
highlighter: highlight.js
output: pdf_document
job: December 2015
knit: slidify::knit2slides
mode: selfcontained
hitheme: tomorrow
subtitle: Data from a case-control study of esophageal cancer in Ille-et-Vilaine,
  France.
framework: io2012
widgets: []
---

## Background

1. Esophageal cancer is prevalent and highly lethal.
2. There are several known risk factors in the development of esophageal cancer, including age, cigarette smoking, and alcohol abuse.
3. A case-control study in France quantified the risk of development of esophageal cancer for 88 age/alcohol/tobacco combinations.

---

## Description of the app

1. This Shiny app calculated the risk of esophageal cancer for different age/alcohol/tobacco combinations.  
2. Checkboxes are present to check cohorts of age, alcohol consumption, and tobacco use.  
3. The output is the risk of development of esophageal cancer, based on the results of the aforementioned study.

---

## Example of some R code used to generate the app  

I will enter the following data: age<-"65-74"; alcohol<-"80-119"; tobacco<-"20-29".


```r
data("esoph")
age<-"65-74"; alcohol<-"80-119"; tobacco<-"20-29"
row<-which((esoph$agegp==age)&(esoph$alcgp==alcohol)&(esoph$tobgp==tobacco))
esophRiskPercent<<-paste0(round(100*esoph[row, 4]/(esoph[row, 4]+esoph[row, 5]), 1),"%")
esophRiskPercent
```

```
## [1] "40%"
```

---

## Link to the Shiny app

Click the following link to access the Shiny app to calculate the risk for esophageal cancer for various age/alcohol/tobacco combinations:

https://jjc0965.shinyapps.io/shinyApp

