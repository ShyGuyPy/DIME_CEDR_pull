tabPanel("Select Data",
         
         #S----------------------select data radio buttons--------------------
         radioButtons("active_data","Select Data Source",
                      c("CEDR" = "cedr",
                        "NWIS" = "nwis",
                        "WQDP" = "wqdp")),
         #E----------------------end of select data radio buttons-------------
         
         
         
         
         br(),
         
         leafletOutput("map_huc12", height = 400, width = 400),
         absolutePanel(
           top = "auto", left = "auto", right = 25, bottom = 735,
           width = "auto", height = "auto",
           actionButton("map_zoom_in", "+", style = 'font-size: 150%'),
           actionButton("map_zoom_out", "-", style = 'font-size:160%')
)
)