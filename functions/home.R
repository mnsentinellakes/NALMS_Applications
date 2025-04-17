output$homeUI = renderUI({
  fluidRow(
    column(
      width = 2,
      wellPanel(
        style = "background-color: #ecf0f1; border-color: #2C3E50; border-width: 4px;",
        tags$div(
          style = 'font-size:large; text-align:center;',
          icon("newspaper"),
          HTML("&nbsp;"),
          tags$b("News and Updates")
        ),
        # tags$br(),
        tags$div(
          style = 'font-size:small; vertical-align:top;',
          DTOutput("newstable")
        )
      )
    ),
    column(
      width = 6,
      wellPanel(
        style = "background-color: #ecf0f1; border-color: #2C3E50; border-width: 4px;",
        tags$div(
          style = 'font-size:xx-large; text-align:center;',
          tags$img(src = "cropped-NALMS-Logo-Favicon-e1465489888845.webp",height = '170.6px'),
          tags$b("North American Lake Management Society")
          
        ),
        # tags$br(),
        # tags$hr(style = 'color :#2C3E50; height: 4px;'),
        tags$div(
          style = 'font-size: large;',
          HTML(
            "This site is a service provided by the <a href=https://www.nalms.org/ target = _blank>North American Lake Management Society</a> (NALMS) for use by the water resources 
            community. It has been created to be a central location for accessing shiny apps hosted by the NALMS Shiny Apps Service as well as provide links to external 
            web applications and tools that may be useful for water resources managers, researchers, and analysts.
            <br>
            
            If you have any comments or suggestions for this website, please email us at: <a href=mailto: shinyapps@nalms.org>shinyapps@nalms.org</a>.
            "
          )
        )
      ),
      wellPanel(
        style = "background-color: #ecf0f1; border-color: #2C3E50; border-width: 4px;",
        tags$div(
          style = 'font-size:22px; text-align:center;',
          tags$b("Submitting an Application or Tool")
        ),
        tags$br(),
        tags$div(
          style = 'font-size:medium;',
          HTML(
          "If you know of an existing application or tool that is already hosted by another organization that is currently not included on this site, e-mail 
          <a href=mailto: shinyapps@nalms.org>shinyapps@nalms.org</a> with a link to the url where it is located. 
          <br><br>
          If you would like to submit a shiny application to be hosted on the NALMS Shiny Apps Service, send an e-mail to 
          <a href=mailto: shinyapps@nalms.org>shinyapps@nalms.org</a>, including the information below. 
          Before sending the e-mail, ensure that the application or tool fulfills the requirements listed on the right side of this page."
          ),
          tags$br(),
          tags$br(),
          tags$ul(
            tags$li(
              "Shiny App Name"
            ),
            tags$li(
              "Contact Information",
              tags$ul(
                tags$li(
                  tags$em("Name")
                ),
                tags$li(
                  tags$em("Organization/Agency")
                ),
                tags$li(
                  tags$em("E-mail")
                ),
                tags$li(
                  tags$em("Phone Number")
                )
              )
            ),
            tags$li("What does the shiny app do?"),
            tags$li("How does this app contribute to NALMS' core mission? (Listed on the right of this page)"),
            tags$li("Who is the expected user base?")
          )
        )
      )
    ),
    # column(
    #   width = 1
    # ),
    column(
      width = 4,
      
      wellPanel(
        style = "background-color: #ecf0f1; border-color: #2C3E50; border-width: 4px;",
        tags$div(
          style = 'font-size: 22px; text-align:center;',
          tags$u(
            tags$b("Requirements for Submitting an Application or Tool"),
          )
        ),
        tags$br(),
        tags$div(
          style = 'font-size:medium',
          tags$ul(
            tags$li(
              "The application or tool must contribute towards at least on of NALMS' goals.",
              tags$ol(
                tags$li(
                  tags$em("To promote the exchange of information on aspects of managing lakes and their watersheds")
                ),
                tags$li(
                  tags$em("To promote public awareness of lake ecosystems")
                ),
                tags$li(
                  tags$em("To encourage public support for promoting management of lakes and their watersheds")
                ),
                tags$li(
                  tags$em("To provide guidance to agencies involved in management activities for lakes and their watersheds")
                ),
                tags$li(
                  tags$em("To boost the professional status of those engaged in managing lakes and their watersheds")
                ),
                tags$li(
                  tags$em("To identify needs and encourage research on lake ecology and watershed management")
                )
              )
            ),
            tags$li(
              "The application or tool should not be relevant to a single organizations internal processes. The application or tool may be developed for
                      a specific organization as long as it is useful beyond beyond that organization."
            ),
            tags$li(
              "The application or tool must be functional and capable of performing the tasks it was designed to do."
            ),
            tags$li(
              "The application or tool must be free, open-source, and available for everyone to use."
            )
          )
        )
      )
    )
  )
})

output$newstable = renderDT({
    newscsv = read.csv("data/news_updates.csv",stringsAsFactors = FALSE)
    newscsv = newscsv %>% arrange(desc(as.Date(Date,format = "%m/%d/%Y")))
    datatable(
      newscsv,
      options = list(
        dom = 't',
        scrolly = TRUE,
        scrollx = TRUE,
        ordering = FALSE,
        excape = FALSE
      ),
      rownames = FALSE,
      colnames = c("",""),
      selection = 'none'
    ) %>% formatStyle(colnames(newscsv),verticalAlign = 'top')
      
      
},
server = FALSE)