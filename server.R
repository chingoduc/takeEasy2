# server.R
library(DMwR)
library(rpart)
source("helpers.R")
data(algae)

shinyServer(function(input, output) {
  output$algaeHead <- renderTable(
    head(algae)
  )
  output$rtree <- renderPrint({
    algae <- switch(input$alg, 
                    "a1" = "a1",
                    "a2" = "a2",
                    "a3" = "a3",
                    "a4" = "a4",
                    "a5" = "a5",
                    "a6" = "a6",
                    "a7" = "a7")
    naRpl <- switch(input$method, 
                    "Frequent" = "Frequent",
                    "Similar" = "Similar")
    
    algaePred (   alg = algae, 
                method = naRpl 
                )
    
  })
  
}
)