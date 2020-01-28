tabPanel("Location Map",
         fluidRow(
           column(
             width = 8,
             leafletOutput("map", height = 800),
             absolutePanel(
               top = "auto", left = "auto", right = 25, bottom = 735,
               width = "auto", height = "auto",
               actionButton("map_zoom_in", "+", style = 'font-size: 150%'),
               actionButton("map_zoom_out", "-", style = 'font-size:160%')
             )
             
           )#end col
         )#end fluidrow
) #end of tabPanel