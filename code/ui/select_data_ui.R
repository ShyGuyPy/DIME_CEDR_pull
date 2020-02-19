tabPanel("Select Data",

         #S----------------------select data radio buttons--------------------
         radioButtons("active_data","Select Data Source",
                      c("CEDR" = "cedr",
                        "NWIS" = "nwis",
                        "WQDP" = "wqdp")),
         #E----------------------end of select data radio buttons-------------

         


         br(),
         
         #E-----------------------date input---------------------
         dateRangeInput("date_range",
                        "Specify plot range",
                        start = min_date,
                        #               start = "2019-05-01",
                        #               end = "1930-12-31",
                        # start = date_start,
                        end = max_date,
                        format = "yyyy-mm-dd",
                        width = NULL),
         #E---------------------end date input---------------------
         
         br(),
         
         #S----------------------select metric radio buttons----------------
         checkboxGroupInput("select_metric","Select Data Metrics",
                      c("Salinity" = "salinity",
                        "DIN" = "din",
                        "Secchi" = "secchi",
                        "PO4" = "po4",
                        "Chla" = "chla",
                        "Pheophytin" = "pheo",
                        "DOC" = "doc")),
         #E----------------------end of select metric radio buttons---------

         
         #S----------------------select data action buttons--------------------
         actionButton("select_data",
                      "Select Data Source and Metrics",
                      icon = NULL,
                      width = "500px"
         ),#,
         #E----------------------end of select data action buttons-------------

         verbatimTextOutput("selection_report")
         
         
         
         
         )