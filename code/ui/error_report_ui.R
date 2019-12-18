tabPanel("Error Report",
         

             fluidRow("Problem Report",
               column(
                 width = 12,
                 verbatimTextOutput("problems")
               )#end col
             ),#end fluidrow
               fluidRow("Qualifier Report",
                 column(
                   width = 12,
                   verbatimTextOutput("qualifiers")
               )#end col
             )#end fluidrow
          ) #end of tabPanel

