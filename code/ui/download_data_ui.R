tabPanel("Download Data",
           #S----------------------CEDR action buttons--------------------
           actionButton("download_cedr_data",
                        "Download All CEDR Data",
                        icon = NULL,
                        width = "500px"
                        ),
           #E----------------------end of CEDR action buttons-------------
         
         tags$div(
           br()
         ),
         
         #S----------------------NWIS action buttons--------------------
         actionButton("download_nwis_data",
                      "Download All USGS NWIS Data",
                      icon = NULL,
                      width = "500px"
         ),
         #E----------------------end of NWIS action buttons-------------
        
         tags$div(
           br()
         ),
         
         #S----------------------NWIS action buttons--------------------
         actionButton("download_wqdp_data",
                      "Download All Water Quality Portal Data",
                      icon = NULL,
                      width = "500px"
         )
         #E----------------------end of NWIS action buttons-------------
  
)