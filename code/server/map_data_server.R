
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
