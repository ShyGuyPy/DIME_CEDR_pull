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
                    #if data has been downloaded show errors else show message
                    if(file.exists(file.path(#project.dir, 
                      active_path, "active_data.csv"))){
                    DT::dataTableOutput("problem_table")} else {
                      verbatimTextOutput("no_data_error_problems")
                    }#end of if file.exists
                  )#end col
         ),#end fluidrow
         
         fluidRow("qualifier table",
                  column(
                    width = 12,
                    #if data has been downloaded show errors else show message
                    if(file.exists(file.path(#project.dir, 
                      active_path, "active_data.csv"))){
                    DT::dataTableOutput("qualifier_table")} else {
                      verbatimTextOutput("no_data_error_qualifiers")
                    }#end of if file.exists
                  )#end col
         )#end fluidrow
         
          ) #end of tabPanel

