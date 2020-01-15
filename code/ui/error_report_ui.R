tabPanel("Error Report",
         
             ###outputs on press of 'reort erros button'
             # fluidRow("Problem Report",
             #   column(
             #     width = 12,
             #     verbatimTextOutput("problems")
             #   )#end col
             # ),#end fluidrow
             ###outputs on press of 'reort erros button'
             #   fluidRow("Qualifier Report",
             #     column(
             #       width = 12,
             #       verbatimTextOutput("qualifiers")
             #   )#end col
             # ),#end fluidrow
         
         fluidRow("problem table",
                  column(
                    width = 12,
                    #renderTable(test_table)
                    DT::dataTableOutput("problem_table")
                  )#end col
         ),#end fluidrow
         
         fluidRow("qualifier table",
                  column(
                    width = 12,
                    #renderTable(test_table)
                    DT::dataTableOutput("qualifier_table")
                  )#end col
         )#end fluidrow
         
          ) #end of tabPanel

