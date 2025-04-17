library(shiny)
library(shinythemes)
library(DT)
library(dplyr)
library(stringr)
library(htmlwidgets)
library(shinyWidgets)

source("functions/navmenu.R")
# source("functions/header.R")
ui <- navbarPage(
  collapsible = TRUE,
  title = "NALMS Applications",
  theme = shinytheme("flatly"),
  # header = nalmsheader,
  homepanel,
  nalmsshinyappsmenu,
  externalshinyappsmenu,
  externalwebappsmenu,
  toolscodingmenu,
  datapanel,
  allappsandtoolspanel
  
)

# Define server logic required to draw a histogram
server <- function(input, output,session) {
  
  #Table Formatting
  source("functions/tableformatting.R",local = TRUE)$value
  
  #Home Page
  source("functions/home.R",local = TRUE)$value
  
  #Modules
  source("functions/modules.R",local = TRUE)$value
  
  #UIs for panels
  source("functions/panelUI.R",local = TRUE)$value

}

# Run the application 
shinyApp(ui = ui, server = server)
