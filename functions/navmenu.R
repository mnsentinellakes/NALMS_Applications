#About Panel
homepanel = tabPanel(
  "Home",
  value = "home",
  icon = icon("home"),
  uiOutput("homeUI")
)
#NALMS Shiny Apps
nalmsshinyappsmenu = navbarMenu(
  "NALMS Shiny Apps",
  tabPanel(
    "Knowledge Base",
    value = "nalmsshinyknowledgebasepanel",
    uiOutput("nalmsshinyknowledgebaseUI")
  ),
  tabPanel(
    "Data Processing",
    value = "nalmsshinydataprocessingpanel",
    uiOutput("nalmsshinydataprocessingUI")
  ),
  tabPanel(
    "Data Analysis",
    value = "nalmsshinydataanalysispanel",
    uiOutput("nalmsshinydataanalysisUI")
  ),
  tabPanel(
    "Data Visualization",
    value = "nalmsshinydatavisualizationpanel",
    uiOutput("nalmsshinydatavisualizationUI")
  )
)
#External Shiny Apps
externalshinyappsmenu = navbarMenu(
  "External Shiny Apps",
  tabPanel(
    "Data Analysis",
    value = "externalshinydataanalysispanel",
    uiOutput("externalshinydataanalysisUI")
  ),
  tabPanel(
    "Data Visualization",
    value = "externalshinydatavisualizationpanel",
    uiOutput("externalshinydatavisualizationUI")
  ),
  tabPanel(
    "National Aquatic Resource Surveys",
    value = "externalshinynarspanel",
    uiOutput("externalshinynarsUI")
  )
)
#External Web Apps
externalwebappsmenu = navbarMenu(
  "External Web Apps",
  tabPanel(
    "Data Visualization",
    value = "externalwebdatavisualizationpanel",
    uiOutput("externalwebdatavisualizationUI")
  ),
  tabPanel(
    "Data Management",
    value = "externalwebdatamanagementpanel",
    uiOutput("externalwebdatamanagementUI")
  )
)

#Water Resources Tools
toolscodingmenu = navbarMenu(
  "Tools and Coding",
  tabPanel(
    "Calculators",
    value = "calculatorspanel",
    uiOutput("calculatorsUI")
  ),
  tabPanel(
    "R Packages",
    value = "rpackagespanel",
    uiOutput("rpackagesUI")
  ),
  tabPanel(
    "Excel",
    value = "excelpanel",
    uiOutput("excelUI")
  )
)
#Data
datapanel = tabPanel(
  "Data",
  value = "datapanel",
  uiOutput("dataUI")
)

allappsandtoolspanel = tabPanel(
  "All Apps, Tools, and Data",
  value = "allappsandtoolspanel",
  uiOutput("allappsandtoolsUI")
)