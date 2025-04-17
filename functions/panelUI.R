#NALMS Shiny Knowledge Base UI and modules
output$nalmsshinyknowledgebaseUI = renderUI({
  searchUI("nalmsshinyknowledgebase")
})

searchserver(
  "nalmsshinyknowledgebase",
  menu_name = "NALMS Shiny App",
  panel_name = "Knowledge Base"
)

#NALMS Shiny Data Processing UI and modules
output$nalmsshinydataprocessingUI = renderUI({
  searchUI("nalmsshinydataprocessing")
})

searchserver(
  "nalmsshinydataprocessing",
  menu_name = "NALMS Shiny App",
  panel_name = "Data Processing"
)

#NALMS Shiny Data Analysis UI and modules
output$nalmsshinydataanalysisUI = renderUI({
  searchUI("nalmsshinydataanalysis")
})

searchserver(
  "nalmsshinydataanalysis",
  menu_name = "NALMS Shiny App",
  panel_name = "Data Analysis"
)

#NALMS Shiny Data Visualization UI and modules
output$nalmsshinydatavisualizationUI = renderUI({
  searchUI("nalmsshinydatavisualization")
})

searchserver(
  "nalmsshinydatavisualization",
  menu_name = "NALMS Shiny App",
  panel_name = "Data Visualization"
)

#External Shiny Data Analysis UI and modules
output$externalshinydataanalysisUI = renderUI({
  searchUI("externalshinydataanalysis")
})

searchserver(
  "externalshinydataanalysis",
  menu_name = "External Shiny App",
  panel_name = "Data Analysis"
)

#External Shiny Data Visualization UI and modules
output$externalshinydatavisualizationUI = renderUI({
  searchUI("externalshinydatavisualization")
})

searchserver(
  "externalshinydatavisualization",
  menu_name = "External Shiny App",
  panel_name = "Data Visualization"
)

#External Shiny NARS UI and modules
output$externalshinynarsUI = renderUI({
  searchUI("externalshinynars")
})

searchserver(
  "externalshinynars",
  menu_name = "External Shiny App",
  panel_name = "National Aquatic Resource Surveys"
)

#External Web Data Visualization UI and modules
output$externalwebdatavisualizationUI = renderUI({
  searchUI("externalwebdatavisualization")
})

searchserver(
  "externalwebdatavisualization",
  menu_name = "External Web App",
  panel_name = "Data Visualization"
)

#External Web Data Management UI and modules
output$externalwebdatamanagementUI = renderUI({
  searchUI("externalwebdatamanagement")
})

searchserver(
  "externalwebdatamanagement",
  menu_name = "External Web App",
  panel_name = "Data Management"
)

#Calculators UI and modules
output$calculatorsUI = renderUI({
  searchUI("calculators")
})

searchserver(
  "calculators",
  menu_name = "Tools and Coding",
  panel_name = "Calculator"
)

#R packages UI and modules
output$rpackagesUI = renderUI({
  searchUI("rpackages")
})

searchserver(
  "rpackages",
  menu_name = "Tools and Coding",
  panel_name = "R Package"
)

#Excel based tools UI and modules
output$excelUI = renderUI({
  searchUI("excel")
})

searchserver(
  "excel",
  menu_name = "Tools and Coding",
  panel_name = "Excel"
)

#Data UI and modules
output$dataUI = renderUI(
  searchUI("data")
)

searchserver(
  "data",
  menu_name = "Data",
  panel_name = "Data"
)

#All Apps and Tools UI and modules
output$allappsandtoolsUI = renderUI({
  searchUI("allappsandtools")
})

searchserver(
  "allappsandtools",
  menu_name = "All",
  panel_name = NA
)