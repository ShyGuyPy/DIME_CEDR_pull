tabPanel("Location Map",
         fluidRow(
           column(
             width = 12,
             #select which maps to show
             checkboxGroupInput("select_map_metric","Select Data Metrics",
                                c("Salinity" = "salinity",
                                  "DIN" = "din",
                                  "Secchi" = "secchi",
                                  "PO4" = "po4",
                                  "Chla" = "chla",
                                  "Pheophytin" = "pheo",
                                  "DOC" = "doc"),selected = c("salinity","din","secchi","po4","chla","pheo","doc"),inline = TRUE, ),
             
             #salinity conditionalPanel
             conditionalPanel(
               condition =   "input.select_map_metric.includes('salinity')",
               box(tabName = "map1",
             
             leafletOutput("map_salinity", height = 600),
             absolutePanel(
               top = "auto", left = "auto", right = 25, bottom = 735,
               width = "auto", height = "auto",
               actionButton("map_zoom_in", "+", style = 'font-size: 150%'),
               actionButton("map_zoom_out", "-", style = 'font-size:160%')
             )#end absolute panel
             
               )#end box
             ),#end salinity conditionalPanel
             
             
             
             #din conditionalPanel
             conditionalPanel(
               condition =   "input.select_map_metric.includes('din')",
               box(tabName = "map2",
                   
                   leafletOutput("map_din", height = 600),
                   absolutePanel(
                     top = "auto", left = "auto", right = 25, bottom = 735,
                     width = "auto", height = "auto",
                     actionButton("map_zoom_in", "+", style = 'font-size: 150%'),
                     actionButton("map_zoom_out", "-", style = 'font-size:160%')
                   )#end absolute panel
                   
               )#end box
             ),#end din conditionalPanel
             
             
             
             #secchi conditionalPanel
             conditionalPanel(
               condition =   "input.select_map_metric.includes('secchi')",
               box(tabName = "map3",
                   
                   leafletOutput("map_secchi", height = 600),
                   absolutePanel(
                     top = "auto", left = "auto", right = 25, bottom = 735,
                     width = "auto", height = "auto",
                     actionButton("map_zoom_in", "+", style = 'font-size: 150%'),
                     actionButton("map_zoom_out", "-", style = 'font-size:160%')
                   )#end absolute panel
                   
               )#end box
             ),#end secchi conditionalPanel
             
             
             
             #po4 conditionalPanel
             conditionalPanel(
               condition =   "input.select_map_metric.includes('po4')",
               box(tabName = "map4",
                   
                   leafletOutput("map_po4", height = 600),
                   absolutePanel(
                     top = "auto", left = "auto", right = 25, bottom = 735,
                     width = "auto", height = "auto",
                     actionButton("map_zoom_in", "+", style = 'font-size: 150%'),
                     actionButton("map_zoom_out", "-", style = 'font-size:160%')
                   )#end absolute panel
                   
               )#end box
             ),#end po4 conditionalPanel
             
             
             
             #chla conditionalPanel
             conditionalPanel(
               condition =   "input.select_map_metric.includes('chla')",
               box(tabName = "map5",
                   
                   leafletOutput("map_chla", height = 600),
                   absolutePanel(
                     top = "auto", left = "auto", right = 25, bottom = 735,
                     width = "auto", height = "auto",
                     actionButton("map_zoom_in", "+", style = 'font-size: 150%'),
                     actionButton("map_zoom_out", "-", style = 'font-size:160%')
                   )#end absolute panel
                   
               )#end box
             ),#end chla conditionalPanel
             
             
             
             #pheo conditionalPanel
             conditionalPanel(
               condition =   "input.select_map_metric.includes('pheo')",
               box(tabName = "map6",
                   
                   leafletOutput("map_pheo", height = 600),
                   absolutePanel(
                     top = "auto", left = "auto", right = 25, bottom = 735,
                     width = "auto", height = "auto",
                     actionButton("map_zoom_in", "+", style = 'font-size: 150%'),
                     actionButton("map_zoom_out", "-", style = 'font-size:160%')
                   )#end absolute panel
                   
               )#end box
             ),#end pheo conditionalPanel
             
             
             
             #doc conditionalPanel
             conditionalPanel(
               condition =   "input.select_map_metric.includes('doc')",
               box(tabName = "map7",
                   
                   leafletOutput("map_doc", height = 600),
                   absolutePanel(
                     top = "auto", left = "auto", right = 25, bottom = 735,
                     width = "auto", height = "auto",
                     actionButton("map_zoom_in", "+", style = 'font-size: 150%'),
                     actionButton("map_zoom_out", "-", style = 'font-size:160%')
                   )#end absolute panel
                   
               )#end box
             ),#end doc conditionalPanel
             
             
           )#end col
         )#end fluidrow
) #end of tabPanel