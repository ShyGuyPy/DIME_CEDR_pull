
output$map <- renderLeaflet({
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
    hideGroup("Chesapeake Bay Watershed") %>%
    hideGroup("USGS Stream Gage")
})

observeEvent(input$select_data, {
  
  #selects file path based on selection
  if(input$active_data == "cedr"){
    current_path = cedr_path
  } else if(input$active_data == "nwis"){
    current_path = nwis_path
  } else if(input$active_data == "wqdp"){
    current_path = wqpd_path
  }
  
  #path/filename for placing selected data into active data
  our_data <- paste0(current_path, input$active_data, "_raw", ".csv")
  
  if(file.exists(our_data)){
    #read selected data
    active_data.df <- data.table::fread(our_data,
                                        data.table = FALSE)
  }
  
  paramter_data <- active_data.df
  
  
  proxy <- leafletProxy("map", data = active_data.df$measurevalue) %>%
    clearMarkers() %>%
    addCircleMarkers(data = active_data.df,
                     lng = ~longitude,
                     lat = ~latitude,
                     radius = 6,
                     fillColor = ~ "Blues",#pal(active_data.df$measurevalue),
                     stroke = TRUE,
                     weight = 1,
                     color = "black",
                     fillOpacity = 1,
                     label = paste(as.Date(active_data.df$sampledate)),
                     popup=paste('<strong>Date:</strong>', active_data.df$sampledate, "<br>",
                                 '<strong>Value:</strong>', active_data.df$measurevalue, "<br>",
                                 '<strong>Unit:</strong>', active_data.df$unit, "<br>",
                                 '<strong>Station:</strong>', active_data.df$station, "<br",
                                 '<strong>Latitude:</strong>', formatC(active_data.df$latitude, digits = 4, format = "f"), "<br",
                                 '<strong>Longitude:</strong>', formatC(active_data.df$longitude, digits = 4, format = "f")),
                     options = popupOptions(maxHeight = 50)
                     )
})


#need to integrate
# observe({
#   pal <- colorNumeric(palette = c("yellow","purple"), domain = select_data()$measurevalue)
# 
#   proxy <- leafletProxy("map", data = parameter_data) %>%
#     clearControls() #%>%
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