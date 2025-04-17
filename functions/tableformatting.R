#Format table for display
formattable = function(apptable,menu_name,panel_name,search){
  
  if (menu_name != "All"){
    selecttable = apptable %>% filter(Menu_Name == menu_name & Panel_Name == panel_name)
  }else{
    selecttable = apptable
  }

  selecttable = selecttable %>% arrange(tolower(App_Name))
  
  selecttable$App_Name = paste0("<b><a href = '",selecttable$Link,"' target = '_blank'>",selecttable$App_Name,"</a></b>")
  
  if (menu_name %in% c("NALMS Shiny Apps","All","Tools and Coding")){
    
    selecttable$Developer_Email[which(!is.na(selecttable$Developer_Email))] = paste0(
      "<a href = 'mailto: ",
      selecttable$Developer_Email[which(!is.na(selecttable$Developer_Email))],
      "'>",selecttable$Developer_Email[which(!is.na(selecttable$Developer_Email))],
      "</a>"
    )
    
    if (menu_name %in% c("NALMS Shiny Apps","Tools and Coding")){
      if (panel_name == "Calculator"){
        selecttable = selecttable %>% select(App_Name,Description,Organization)
        names(selecttable) = c("Application","Description","Organization")
      }else{
        selecttable = selecttable %>% select(App_Name,Description,Organization,Developer,Developer_Email)
        names(selecttable) = c("Application","Description","Organization","Developer","E-mail")
      }
    
    }else{
      selecttable = selecttable %>% select(App_Name,Description,Organization,Developer,Developer_Email,Menu_Name,Panel_Name)
      names(selecttable) = c("Application or Tool","Description","Organization","Developer","E-mail","App or Tool Group","Type")
    }
  }else{
    selecttable = selecttable %>% select(App_Name,Description,Organization)
    names(selecttable) = c("Application","Description","Organization")
  }
  
  
  
  return(selecttable)
}



