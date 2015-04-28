shinyUI(fluidPage(
  titlePanel("Seven Algae Prediction Preparations"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create rpart tree for algaes from a data set called 'algae'.
               The amount of each kind of algaes (seven kinds) depends on several factors:
               season, size of the river, speed, and chemicals such as mxPH, mnO2,
               Cl, NO3, NH4, oPO4, PO4 and Chla             
               "),
      
      selectInput("alg", 
                  label = "Choose an algae to predict",
                  choices = c("a1", "a2", "a3", "a4", "a5", "a6", "a7"),
                  selected = "a1"),
      
      selectInput("method", 
                  label = "Choose a method to handle NAs ",
                  choices = c("Frequent", "Similar"),
                  selected = "Frequent")
      
    ),
    mainPanel(
      h3 ("Algae Dataset Structure"),
      tableOutput("algaeHead"),
      br(),
      h3 ("Summary of rtree resulting from choice of algae and a method of replacement of NAs"),
      br(),
      verbatimTextOutput("rtree"))
  )
))