tabPanel("Error Report",
         

             fluidRow(
               column(
                 width = 8,
                 verbatimTextOutput("pass_fail")
                 # conditionalPanel(condition = "data_na_percent >=  .05",
                 # box(
                 #   title = "FAIL",
                 #   width = NULL,
                 #   
                 # )#end of box
                 # ),#end of conditional panel
                 # conditionalPanel(condition = "data_na_percent < .05",
                 #                  box(
                 #                    title = "PASS",
                 #                    width = NULL,
                 #                    
                 #                  )#end of box
                 # )#end of conditional panel
               )#end col
             )#end fluidrow
          ) #end of tabPanel

