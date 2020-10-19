source("server.R", local = TRUE)

if(file.exists(paste0(project.dir,active_path, "active_data.csv"))){#"data/ACTIVE/active_data.csv")){
  
  #assign acgive_data
  active_data.df <- data.table::fread(paste0(project.dir, active_path, "active_data.csv"),
                                      header = TRUE,
                                      data.table = FALSE)
}


output$map_salinity <- renderLeaflet({
  leaflet(options = leafletOptions(zoomControl = FALSE)) %>%
    addTiles() %>%
    setView(-78.193593, 38.917359, zoom = 7.5) %>%
    addPolygons(data = HUC8, fill = FALSE, weight = 2, color = "steelblue", group = "HUC8") %>%
    addPolygons(data = PRB, fill = FALSE, weight = 3, color = "navy", group = "Potomac River Watershed") %>%
    addPolygons(data = ches, fill = FALSE, weight = 3, color = "navy", group = "Chesapeake Bay Watershed") %>%
    addCircles(data = gage, lng = ~LONDD, lat = ~LATDD, group = "USGS Stream Gage",
               popup=paste('<strong>Name:</strong>', gage$STATION_NM, "<br>",
                           '<strong>ID:</strong>', gage$STATION_NO)) %>%
    addLayersControl(overlayGroups = c("Potomac River Watershed", "Chesapeake Bay Watershed", "HUC8", "USGS Stream Gage"), position = "bottomleft",
                     options = layersControlOptions(collapsed = FALSE)) %>%
    hideGroup("Chesapeake Bay Watershed") #%>%
    #hideGroup("USGS Stream Gage")
})

output$map_din <- renderLeaflet({
  leaflet(options = leafletOptions(zoomControl = FALSE)) %>%
    addTiles() %>%
    setView(-78.193593, 38.917359, zoom = 7.5) %>%
    addPolygons(data = HUC8, fill = FALSE, weight = 2, color = "steelblue", group = "HUC8") %>%
    addPolygons(data = PRB, fill = FALSE, weight = 3, color = "navy", group = "Potomac River Watershed") %>%
    addPolygons(data = ches, fill = FALSE, weight = 3, color = "navy", group = "Chesapeake Bay Watershed") %>%
    addCircles(data = gage, lng = ~LONDD, lat = ~LATDD, group = "USGS Stream Gage",
               popup=paste('<strong>Name:</strong>', gage$STATION_NM, "<br>",
                           '<strong>ID:</strong>', gage$STATION_NO)) %>%
    addLayersControl(overlayGroups = c("Potomac River Watershed", "Chesapeake Bay Watershed", "HUC8", "USGS Stream Gage"), position = "bottomleft",
                     options = layersControlOptions(collapsed = FALSE)) %>%
    hideGroup("Chesapeake Bay Watershed") #%>%
  #hideGroup("USGS Stream Gage")
})

output$map_secchi <- renderLeaflet({
  leaflet(options = leafletOptions(zoomControl = FALSE)) %>%
    addTiles() %>%
    setView(-78.193593, 38.917359, zoom = 7.5) %>%
    addPolygons(data = HUC8, fill = FALSE, weight = 2, color = "steelblue", group = "HUC8") %>%
    addPolygons(data = PRB, fill = FALSE, weight = 3, color = "navy", group = "Potomac River Watershed") %>%
    addPolygons(data = ches, fill = FALSE, weight = 3, color = "navy", group = "Chesapeake Bay Watershed") %>%
    addCircles(data = gage, lng = ~LONDD, lat = ~LATDD, group = "USGS Stream Gage",
               popup=paste('<strong>Name:</strong>', gage$STATION_NM, "<br>",
                           '<strong>ID:</strong>', gage$STATION_NO)) %>%
    addLayersControl(overlayGroups = c("Potomac River Watershed", "Chesapeake Bay Watershed", "HUC8", "USGS Stream Gage"), position = "bottomleft",
                     options = layersControlOptions(collapsed = FALSE)) %>%
    hideGroup("Chesapeake Bay Watershed") #%>%
  #hideGroup("USGS Stream Gage")
})

output$map_po4 <- renderLeaflet({
  leaflet(options = leafletOptions(zoomControl = FALSE)) %>%
    addTiles() %>%
    setView(-78.193593, 38.917359, zoom = 7.5) %>%
    addPolygons(data = HUC8, fill = FALSE, weight = 2, color = "steelblue", group = "HUC8") %>%
    addPolygons(data = PRB, fill = FALSE, weight = 3, color = "navy", group = "Potomac River Watershed") %>%
    addPolygons(data = ches, fill = FALSE, weight = 3, color = "navy", group = "Chesapeake Bay Watershed") %>%
    addCircles(data = gage, lng = ~LONDD, lat = ~LATDD, group = "USGS Stream Gage",
               popup=paste('<strong>Name:</strong>', gage$STATION_NM, "<br>",
                           '<strong>ID:</strong>', gage$STATION_NO)) %>%
    addLayersControl(overlayGroups = c("Potomac River Watershed", "Chesapeake Bay Watershed", "HUC8", "USGS Stream Gage"), position = "bottomleft",
                     options = layersControlOptions(collapsed = FALSE)) %>%
    hideGroup("Chesapeake Bay Watershed") #%>%
  #hideGroup("USGS Stream Gage")
})

output$map_chla <- renderLeaflet({
  leaflet(options = leafletOptions(zoomControl = FALSE)) %>%
    addTiles() %>%
    setView(-78.193593, 38.917359, zoom = 7.5) %>%
    addPolygons(data = HUC8, fill = FALSE, weight = 2, color = "steelblue", group = "HUC8") %>%
    addPolygons(data = PRB, fill = FALSE, weight = 3, color = "navy", group = "Potomac River Watershed") %>%
    addPolygons(data = ches, fill = FALSE, weight = 3, color = "navy", group = "Chesapeake Bay Watershed") %>%
    addCircles(data = gage, lng = ~LONDD, lat = ~LATDD, group = "USGS Stream Gage",
               popup=paste('<strong>Name:</strong>', gage$STATION_NM, "<br>",
                           '<strong>ID:</strong>', gage$STATION_NO)) %>%
    addLayersControl(overlayGroups = c("Potomac River Watershed", "Chesapeake Bay Watershed", "HUC8", "USGS Stream Gage"), position = "bottomleft",
                     options = layersControlOptions(collapsed = FALSE)) %>%
    hideGroup("Chesapeake Bay Watershed") #%>%
  #hideGroup("USGS Stream Gage")
})

output$map_pheo <- renderLeaflet({
  leaflet(options = leafletOptions(zoomControl = FALSE)) %>%
    addTiles() %>%
    setView(-78.193593, 38.917359, zoom = 7.5) %>%
    addPolygons(data = HUC8, fill = FALSE, weight = 2, color = "steelblue", group = "HUC8") %>%
    addPolygons(data = PRB, fill = FALSE, weight = 3, color = "navy", group = "Potomac River Watershed") %>%
    addPolygons(data = ches, fill = FALSE, weight = 3, color = "navy", group = "Chesapeake Bay Watershed") %>%
    addCircles(data = gage, lng = ~LONDD, lat = ~LATDD, group = "USGS Stream Gage",
               popup=paste('<strong>Name:</strong>', gage$STATION_NM, "<br>",
                           '<strong>ID:</strong>', gage$STATION_NO)) %>%
    addLayersControl(overlayGroups = c("Potomac River Watershed", "Chesapeake Bay Watershed", "HUC8", "USGS Stream Gage"), position = "bottomleft",
                     options = layersControlOptions(collapsed = FALSE)) %>%
    hideGroup("Chesapeake Bay Watershed") #%>%
  #hideGroup("USGS Stream Gage")
})

output$map_doc <- renderLeaflet({
  leaflet(options = leafletOptions(zoomControl = FALSE)) %>%
    addTiles() %>%
    setView(-78.193593, 38.917359, zoom = 7.5) %>%
    addPolygons(data = HUC8, fill = FALSE, weight = 2, color = "steelblue", group = "HUC8") %>%
    addPolygons(data = PRB, fill = FALSE, weight = 3, color = "navy", group = "Potomac River Watershed") %>%
    addPolygons(data = ches, fill = FALSE, weight = 3, color = "navy", group = "Chesapeake Bay Watershed") %>%
    addCircles(data = gage, lng = ~LONDD, lat = ~LATDD, group = "USGS Stream Gage",
               popup=paste('<strong>Name:</strong>', gage$STATION_NM, "<br>",
                           '<strong>ID:</strong>', gage$STATION_NO)) %>%
    addLayersControl(overlayGroups = c("Potomac River Watershed", "Chesapeake Bay Watershed", "HUC8", "USGS Stream Gage"), position = "bottomleft",
                     options = layersControlOptions(collapsed = FALSE)) %>%
    hideGroup("Chesapeake Bay Watershed") #%>%
  #hideGroup("USGS Stream Gage")
})

#https://stackoverflow.com/questions/41960953/how-to-listen-for-more-than-one-event-expression-within-a-shiny-observeevent
#creates a reactive that responds to both inputs(data selection and map tab click)
toListenMap <- reactive({
  list(input$select_data,input$map_data_tab)
})

#activates on map tab selection
toListenMap2 <- reactive({
  list(input$map_data_tab)
  #file.exists("data/ACTIVE/active_data.csv"),
})


#update map after data is selected and map tab is selected
observeEvent(input$selected_tab#
  #input$map_data_tab#toListenMap()
  #input$select_data
  , {
    
   

  # #selects file path based on selection
  # if(input$active_data == "cedr"){
  #   current_path = cedr_path
  # } else if(input$active_data == "nwis"){
  #   current_path = nwis_path
  # } else if(input$active_data == "wqdp"){
  #   current_path = wqdp_path
  # }
  # 
  # #path/filename for placing selected data into active data
  # our_data <- paste0(current_path, input$active_data, "_raw", ".csv")
  # 
  # 
  # #tests if the raw data has been downloaded
  # if(file.exists(our_data)){
  #   #read selected data
  #   #active_data.df <- active_data.df() #active_data.df <- data.table::fread(our_data,
  #                                      # data.table = FALSE)
  # }

  #only runs if active_data has been assigned and written to dirctory
  if(file.exists(paste0(#project.dir,
    active_path, "active_data.csv"))){#"data/ACTIVE/active_data.csv")){#paste0(project.dir,"data/ACTIVE/", "active_data.csv"))){
    
    #reset scale of view
    proxy <- leafletProxy("map", data = active_data.df) %>%
      setView(-78.193593, 38.917359, zoom = 7.5)
    
    #grab active data
    active_data.df <- data.table::fread(paste0(#project.dir,
      active_path, "active_data.csv"),
                                        header = TRUE,
                                        data.table = FALSE)
    
    salinity.df <- active_data.df %>%
      filter(parameter == "salinity")
    
    din.df <- active_data.df %>%
      filter(parameter == "din")
    
    secchi.df <- active_data.df %>%
      filter(parameter == "secchi")
    
    po4.df <- active_data.df %>%
      filter(parameter == "po4")
    
    chla.df <- active_data.df %>%
      filter(parameter == "chla")
    
    pheo.df <- active_data.df %>%
      filter(parameter == "pheo")
    
    doc.df <- active_data.df %>%
      filter(parameter == "doc")
    
  pal <- colorNumeric(palette = c("yellow","purple"), domain = active_data.df$measurevalue)
  
  

  
  #checks if active_data.df has data
  if(length(active_data.df) != 0){
    
  #salinity map proxy
  proxy <- leafletProxy("map_salinity", data = salinity.df$measurevalue) %>%
    clearMarkers() %>%
    addCircleMarkers(data = salinity.df,
                     lng = ~longitude,
                     lat = ~latitude,
                     radius = 6,
                     #fillColor = ~ "Blues",
                     fillColor = ~ pal(salinity.df$measurevalue),
                       #pal(active_data.df$measurevalue),
                     stroke = TRUE,
                     weight = 1,
                     color = "black",
                     fillOpacity = 1,
                     label = paste(as.Date(salinity.df$sampledate)),
                     popup=paste('<strong>Date:</strong>', salinity.df$sampledate, "<br>",
                                 '<strong>Value:</strong>', salinity.df$measurevalue, "<br>",
                                 '<strong>Unit:</strong>', salinity.df$unit, "<br>",
                                 '<strong>Station:</strong>', salinity.df$station, "<br",
                                 '<strong>Latitude:</strong>', formatC(salinity.df$latitude, digits = 4, format = "f"), "<br",
                                 '<strong>Longitude:</strong>', formatC(salinity.df$longitude, digits = 4, format = "f")),
                     options = popupOptions(maxHeight = 50)
                     )

  #add parameters and legend
  proxy <- leafletProxy("map_salinity", data = salinity.df) %>%
    clearControls() %>%
    addLegend(#"bottomright"
      "topleft", pal = pal,
      values = salinity.df$measurevalue,
      #values =select_data()$measurevalue,
              #title = as.character(input$data),
              opacity = 1)
  #end salinity map proxy
  
  
  
  #din map proxy
  proxy <- leafletProxy("map_din", data = din.df$measurevalue) %>%
    clearMarkers() %>%
    addCircleMarkers(data = din.df,
                     lng = ~longitude,
                     lat = ~latitude,
                     radius = 6,
                     #fillColor = ~ "Blues",
                     fillColor = ~ pal(din.df$measurevalue),
                     #pal(active_data.df$measurevalue),
                     stroke = TRUE,
                     weight = 1,
                     color = "black",
                     fillOpacity = 1,
                     label = paste(as.Date(din.df$sampledate)),
                     popup=paste('<strong>Date:</strong>', din.df$sampledate, "<br>",
                                 '<strong>Value:</strong>', din.df$measurevalue, "<br>",
                                 '<strong>Unit:</strong>', din.df$unit, "<br>",
                                 '<strong>Station:</strong>', din.df$station, "<br",
                                 '<strong>Latitude:</strong>', formatC(din.df$latitude, digits = 4, format = "f"), "<br",
                                 '<strong>Longitude:</strong>', formatC(din.df$longitude, digits = 4, format = "f")),
                     options = popupOptions(maxHeight = 50)
    )
  
  #add parameters and legend
  proxy <- leafletProxy("map_din", data = din.df) %>%
    clearControls() %>%
    addLegend(#"bottomright"
      "topleft", pal = pal,
      values = din.df$measurevalue,
      #values =select_data()$measurevalue,
      #title = as.character(input$data),
      opacity = 1)
  #end din map proxy

  

  
  #secchi map proxy
  proxy <- leafletProxy("map_secchi", data = secchi.df$measurevalue) %>%
    clearMarkers() %>%
    addCircleMarkers(data = secchi.df,
                     lng = ~longitude,
                     lat = ~latitude,
                     radius = 6,
                     #fillColor = ~ "Blues",
                     fillColor = ~ pal(secchi.df$measurevalue),
                     #pal(active_data.df$measurevalue),
                     stroke = TRUE,
                     weight = 1,
                     color = "black",
                     fillOpacity = 1,
                     label = paste(as.Date(secchi.df$sampledate)),
                     popup=paste('<strong>Date:</strong>', secchi.df$sampledate, "<br>",
                                 '<strong>Value:</strong>', secchi.df$measurevalue, "<br>",
                                 '<strong>Unit:</strong>', secchi.df$unit, "<br>",
                                 '<strong>Station:</strong>', secchi.df$station, "<br",
                                 '<strong>Latitude:</strong>', formatC(secchi.df$latitude, digits = 4, format = "f"), "<br",
                                 '<strong>Longitude:</strong>', formatC(secchi.df$longitude, digits = 4, format = "f")),
                     options = popupOptions(maxHeight = 50)
    )
  
  #add parameters and legend
  proxy <- leafletProxy("map_secchi", data = secchi.df) %>%
    clearControls() %>%
    addLegend(#"bottomright"
      "topleft", pal = pal,
      values = secchi.df$measurevalue,
      #values =select_data()$measurevalue,
      #title = as.character(input$data),
      opacity = 1)
  #end secchi map proxy
  
  
  
  
  #po4 map proxy
  proxy <- leafletProxy("map_po4", data = po4.df$measurevalue) %>%
    clearMarkers() %>%
    addCircleMarkers(data = po4.df,
                     lng = ~longitude,
                     lat = ~latitude,
                     radius = 6,
                     #fillColor = ~ "Blues",
                     fillColor = ~ pal(po4.df$measurevalue),
                     #pal(active_data.df$measurevalue),
                     stroke = TRUE,
                     weight = 1,
                     color = "black",
                     fillOpacity = 1,
                     label = paste(as.Date(po4.df$sampledate)),
                     popup=paste('<strong>Date:</strong>', po4.df$sampledate, "<br>",
                                 '<strong>Value:</strong>', po4.df$measurevalue, "<br>",
                                 '<strong>Unit:</strong>', po4.df$unit, "<br>",
                                 '<strong>Station:</strong>', po4.df$station, "<br",
                                 '<strong>Latitude:</strong>', formatC(po4.df$latitude, digits = 4, format = "f"), "<br",
                                 '<strong>Longitude:</strong>', formatC(po4.df$longitude, digits = 4, format = "f")),
                     options = popupOptions(maxHeight = 50)
    )
  
  #add parameters and legend
  proxy <- leafletProxy("map_po4", data = po4.df) %>%
    clearControls() %>%
    addLegend(#"bottomright"
      "topleft", pal = pal,
      values = po4.df$measurevalue,
      #values =select_data()$measurevalue,
      #title = as.character(input$data),
      opacity = 1)
  #end po4 map proxy
  
  
  
  
  #chla map proxy
  proxy <- leafletProxy("map_chla", data = chla.df$measurevalue) %>%
    clearMarkers() %>%
    addCircleMarkers(data = chla.df,
                     lng = ~longitude,
                     lat = ~latitude,
                     radius = 6,
                     #fillColor = ~ "Blues",
                     fillColor = ~ pal(chla.df$measurevalue),
                     #pal(active_data.df$measurevalue),
                     stroke = TRUE,
                     weight = 1,
                     color = "black",
                     fillOpacity = 1,
                     label = paste(as.Date(chla.df$sampledate)),
                     popup=paste('<strong>Date:</strong>', chla.df$sampledate, "<br>",
                                 '<strong>Value:</strong>', chla.df$measurevalue, "<br>",
                                 '<strong>Unit:</strong>', chla.df$unit, "<br>",
                                 '<strong>Station:</strong>', chla.df$station, "<br",
                                 '<strong>Latitude:</strong>', formatC(chla.df$latitude, digits = 4, format = "f"), "<br",
                                 '<strong>Longitude:</strong>', formatC(chla.df$longitude, digits = 4, format = "f")),
                     options = popupOptions(maxHeight = 50)
    )
  
  #add parameters and legend
  proxy <- leafletProxy("map_chla", data = chla.df) %>%
    clearControls() %>%
    addLegend(#"bottomright"
      "topleft", pal = pal,
      values = chla.df$measurevalue,
      #values =select_data()$measurevalue,
      #title = as.character(input$data),
      opacity = 1)
  #end chla map proxy
  
  
  
  
  #pheo map proxy
  proxy <- leafletProxy("map_pheo", data = pheo.df$measurevalue) %>%
    clearMarkers() %>%
    addCircleMarkers(data = pheo.df,
                     lng = ~longitude,
                     lat = ~latitude,
                     radius = 6,
                     #fillColor = ~ "Blues",
                     fillColor = ~ pal(pheo.df$measurevalue),
                     #pal(active_data.df$measurevalue),
                     stroke = TRUE,
                     weight = 1,
                     color = "black",
                     fillOpacity = 1,
                     label = paste(as.Date(pheo.df$sampledate)),
                     popup=paste('<strong>Date:</strong>', pheo.df$sampledate, "<br>",
                                 '<strong>Value:</strong>', pheo.df$measurevalue, "<br>",
                                 '<strong>Unit:</strong>', pheo.df$unit, "<br>",
                                 '<strong>Station:</strong>', pheo.df$station, "<br",
                                 '<strong>Latitude:</strong>', formatC(pheo.df$latitude, digits = 4, format = "f"), "<br",
                                 '<strong>Longitude:</strong>', formatC(pheo.df$longitude, digits = 4, format = "f")),
                     options = popupOptions(maxHeight = 50)
    )
  
  #add parameters and legend
  proxy <- leafletProxy("map_pheo", data = pheo.df) %>%
    clearControls() %>%
    addLegend(#"bottomright"
      "topleft", pal = pal,
      values = pheo.df$measurevalue,
      #values =select_data()$measurevalue,
      #title = as.character(input$data),
      opacity = 1)
  #end pheo map proxy
  
  
  
  
  #doc map proxy
  proxy <- leafletProxy("map_doc", data = doc.df$measurevalue) %>%
    clearMarkers() %>%
    addCircleMarkers(data = doc.df,
                     lng = ~longitude,
                     lat = ~latitude,
                     radius = 6,
                     #fillColor = ~ "Blues",
                     fillColor = ~ pal(doc.df$measurevalue),
                     #pal(active_data.df$measurevalue),
                     stroke = TRUE,
                     weight = 1,
                     color = "black",
                     fillOpacity = 1,
                     label = paste(as.Date(doc.df$sampledate)),
                     popup=paste('<strong>Date:</strong>', doc.df$sampledate, "<br>",
                                 '<strong>Value:</strong>', doc.df$measurevalue, "<br>",
                                 '<strong>Unit:</strong>', doc.df$unit, "<br>",
                                 '<strong>Station:</strong>', doc.df$station, "<br",
                                 '<strong>Latitude:</strong>', formatC(doc.df$latitude, digits = 4, format = "f"), "<br",
                                 '<strong>Longitude:</strong>', formatC(doc.df$longitude, digits = 4, format = "f")),
                     options = popupOptions(maxHeight = 50)
    )
  
  #add parameters and legend
  proxy <- leafletProxy("map_doc", data = doc.df) %>%
    clearControls() %>%
    addLegend(#"bottomright"
      "topleft", pal = pal,
      values = doc.df$measurevalue,
      #values =select_data()$measurevalue,
      #title = as.character(input$data),
      opacity = 1)
  #end doc map proxy
  
  
  
  
  }#end of if length != 0

    #pal <- colorNumeric(palette = c("yellow","purple"), domain = active_data.df()$measurevalue)#select_data()$measurevalue)

    # proxy <- leafletProxy("map", data = parameter_data) %>%
    #   clearControls() %>%
    #   addLegend("bottomleft", pal = pal, values =select_data()$measurevalue, title = as.character(input$data), opacity = 1)
    # 
    }#end of if exist active_data
})#end of observe event


#need to integrate
# observe({
#   pal <- colorNumeric(palette = c("yellow","purple"), domain = select_data()$measurevalue)
#
#   proxy <- leafletProxy("map", data = parameter_data) %>%
#     clearControls() %>%
#     addLegend("bottomleft", pal = pal, values =select_data()$measurevalue, title = as.character(input$data), opacity = 1)
# })




# Zoom control - zoom out
observeEvent(input$map_zoom_out ,{
  leafletProxy("map") %>%
    setView(lat  = (input$map_bounds$north + input$map_bounds$south) / 2,
            lng  = (input$map_bounds$east + input$map_bounds$west) / 2,
            zoom = input$map_zoom - 1)
})
# Zoom control - zoom in
observeEvent(input$map_zoom_in ,{
  leafletProxy("map") %>%
    setView(lat  = (input$map_bounds$north + input$map_bounds$south) / 2,
            lng  = (input$map_bounds$east + input$map_bounds$west) / 2,
            zoom = input$map_zoom + 1)
})












# 
# observe({
#   parameter_data <- select_data()
#   
#   pal <- colorNumeric(palette = c("yellow","purple"), domain = select_data()$measurevalue)
#   
#   proxy <- leafletProxy("map", data = select_data()$measurevalue) %>%
#     clearMarkers() %>%
#     addCircleMarkers(data = parameter_data,
#                      lng = ~longitude,
#                      lat = ~latitude,
#                      radius = 6,
#                      fillColor = ~ pal(select_data()$measurevalue),
#                      stroke = TRUE,
#                      weight = 1,
#                      color = "black",
#                      fillOpacity = 1,
#                      label = paste(parameter_data$year),
#                      popup=paste('<strong>Date:</strong>', parameter_data$date, "<br>",
#                                  '<strong>Value:</strong>', parameter_data$measurevalue, "<br>",
#                                  '<strong>Unit:</strong>', parameter_data$unit, "<br>",
#                                  '<strong>Station:</strong>', parameter_data$station, "<br",
#                                  '<strong>Latitude:</strong>', formatC(parameter_data$latitude, digits = 4, format = "f"), "<br",
#                                  '<strong>Longitude:</strong>', formatC(parameter_data$longitude, digits = 4, format = "f")),
#                      options = popupOptions(maxHeight = 50))
# })
# 
# observe({
#   pal <- colorNumeric(palette = c("yellow","purple"), domain = select_data()$measurevalue)
#   
#   proxy <- leafletProxy("map", data = parameter_data) %>%
#     clearControls() %>%
#     addLegend("bottomleft", pal = pal, values =select_data()$measurevalue, title = as.character(input$data), opacity = 1)
# })