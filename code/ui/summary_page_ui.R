tabPanel("Summary Page",
         # fluidRow("Mean",
         #   column(
         #     width = 8,
         #     )#end col
         #   ),#end fluidrow
         # fluidRow("Median",
         #          column(
         #            width = 8,
         #          )#end col
         # ),#end fluidrow
         # 
         # fluidRow("Mode",
         #          column(
         #            width = 8,
         #          )#end col
         # )#end fluidrow
         
         
         fluidRow("Mean, Median, Mode",
           column(
             width = 8,
         DT::dataTableOutput("m3_table")
         
                  )#end col
         )#end fluidrow
         
) #end of tabPanel




