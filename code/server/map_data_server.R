
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