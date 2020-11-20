output$map_huc12 <- renderLeaflet({
  leaflet(options = leafletOptions(zoomControl = FALSE)) %>%
    addTiles() %>%
    setView(-78.193593, 38.917359, zoom = 6.5) %>%#zoom = 7.5) %>%
    addPolygons(data = HUC12, fill = TRUE, weight = 2, color = "steelblue", group = "HUC12") 
  
})