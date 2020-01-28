tags$div(
  h1("Instructions"),
  p("This tool is meant to provide a qucik look at data"),
  br(),
  h2("Download Data"),
  p("Data can be pulled annually."),
  tags$ol(
    tags$li(paste0("Data was last downloaded from CEDR(http://datahub.chesapeakebay.net) on : ", last_CEDR_download_date)), 
    tags$li(paste0("Data was last downloaded from NWIS on: ", last_NWIS_download_date)), 
    tags$li(paste0("Data was last downloaded from WQDP on: ", last_WQDP_download_date))
  ),

  
  br(),
  h2("Select Data"),
  p("Select data from CEDR,NWIS, or WQP. Narrow down the date range and parameter list"),
  br(),
  h2("Error Report"),
  p("Displays errors for selected data"),
  br(),
  h2("Grapth Data"),
  p("Displays graph for selected data"),
  br(),
  h2("Map Data"),
  p("Displays map for selected data"),
)
