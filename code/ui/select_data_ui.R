tabPanel("Select Data",
         radioButtons("active_data","Select Data Source",
                      c("CEDR" = "cedr",
                        "NWIS" = "nwis",
                        "WQDP" = "wqdp")),
         
         #S----------------------select action buttons--------------------
         actionButton("select_data",
                      "Select Data Source",
                      icon = NULL,
                      width = "500px"
         ),
         #E----------------------end of select action buttons-------------
         
         )