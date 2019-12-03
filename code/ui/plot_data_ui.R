tabPanel("Plot Data",
  fluidRow(
  column(
    width = 8,
    box(
      title = NULL,
      width = NULL,
      
      plotOutput("plot_the_data", width = "500px", height = "500px" )
    )#end of box
  )#end col
)#end fluidrow
) #end of tabPanel