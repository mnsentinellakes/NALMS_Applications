#UI for searching and viewing table of applications and tools
searchUI = function(id){
  ns = NS(id)
  tagList(
    wellPanel(
      style = "background-color: transparent; border-color: #2C3E50; border-width: 1px; padding:5px; padding-top:10px; width:40%",
      #Search Input
      searchInput(
        inputId = ns("searchtext"),
        btnSearch = "Search",
        btnReset = "Reset",
        placeholder = "Search for App or Tool",
        width = "95%"
      )
      
    ),
    #Data Table Output
    DTOutput(ns("apptable"))
  )
}

#Server for searching and view table of applications and tools
searchserver = function(id,menu_name,panel_name){
  moduleServer(
    id,
    function(input,output,session){
      #Data Table Settings
      dtoptions = list(
        searching = FALSE,
        paging = FALSE,
        info = FALSE
      )
      
      #Create empty reactiveVal to store app table
      appdata = reactiveVal()
      
      #Observe the searchtext input to implement code for reading and displaying table
      observeEvent(
        input$searchtext,
        {
          #Read in apptable csv
          appdata(read.csv("data/apptable.csv",stringsAsFactors = FALSE))
          
          #Ensure searchtext input is not empty
          if (input$searchtext != ""){
            filterappdata = appdata()
            #Split searchtext into individual strings
            searchwords = str_split(input$searchtext,"\\s+")[[1]]
            #Filter appdata according to the search terms
            filterappdata = filterappdata %>% rowwise() %>% filter(any(str_detect(c_across(everything()),str_c(searchwords,collapse = "|"))))
            appdata(filterappdata)
          }
         }
      )
      
      #Display apptable
      output$apptable = renderDT(
        options = dtoptions,
        escape = FALSE,
        rownames = FALSE,
        selection = 'none',
        {
          format4table = formattable(
            apptable = appdata(),
            menu_name = menu_name,
            panel_name = panel_name
          )
          
        }
      )
    }
  )
}