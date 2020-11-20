#source("code/server/test_map_data_server.R", local = TRUE)

###set parameters(setView, zoom, etc) across all metric base maps
###function called in test_map_data_server
map_output_func <-function(gage_station_name,gage_station_id){
  leaflet(options = leafletOptions(zoomControl = FALSE)) %>%
    addTiles() %>%
    setView(#-78.193593, 38.917359, 
      -76.593593, 37.517359,
      zoom = 7) %>%
    addPolygons(data = HUC8, fill = FALSE, weight = 2, color = "steelblue", group = "HUC8") %>%
    addPolygons(data = PRB, fill = FALSE, weight = 3, color = "navy", group = "Potomac River Watershed") %>%
    addPolygons(data = ches, fill = FALSE, weight = 3, color = "navy", group = "Chesapeake Bay Watershed") %>%
    addCircles(data = gage, lng = ~LONDD, lat = ~LATDD, group = "USGS Stream Gage",
               popup=paste('<strong>Name:</strong>', gage_station_name, "<br>",
                           '<strong>ID:</strong>', gage_station_id)) %>%
    addLayersControl(overlayGroups = c("Potomac River Watershed", "Chesapeake Bay Watershed", "HUC8", "USGS Stream Gage"), position = "bottomleft",
                     options = layersControlOptions(collapsed = FALSE)) %>%
    hideGroup("Chesapeake Bay Watershed") %>%
    hideGroup("USGS Stream Gage")
}

map_proxy_func <- function(name, dataframe) {
  proxy <- leafletProxy(name, data = dataframe$measurevalue) %>%
    clearMarkers() %>%
    addCircleMarkers(data = dataframe,
                     lng = ~longitude,
                     lat = ~latitude,
                     radius = 6,
                     #fillColor = ~ "Blues",
                     fillColor = ~ pal(dataframe$measurevalue),
                     #pal(dataframe$measurevalue),
                     stroke = TRUE,
                     weight = 1,
                     color = "black",
                     fillOpacity = 1,
                     label = paste(as.Date(dataframe$sampledate)),
                     popup=paste('<strong>Date:</strong>', dataframe$sampledate, "<br>",
                                 '<strong>Value:</strong>', dataframe$measurevalue, "<br>",
                                 '<strong>Unit:</strong>', dataframe$unit, "<br>",
                                 '<strong>Station:</strong>', dataframe$station, "<br",
                                 '<strong>Latitude:</strong>', formatC(dataframe$latitude, digits = 4, format = "f"), "<br",
                                 '<strong>Longitude:</strong>', formatC(dataframe$longitude, digits = 4, format = "f")),
                     options = popupOptions(maxHeight = 50)
    )
}


legend_proxy_func <- function(name, dataframe) {
  #add parameters and legend
  proxy <- leafletProxy(name, data = dataframe) %>%
    clearControls() %>%
    addLegend(#"bottomright"
      "topleft", pal = pal,
      values = dataframe$measurevalue,
      #values =select_data()$measurevalue,
      #title = as.character(input$data),
      opacity = 1)
  #end chla map proxy
  
}



# #chla map proxy
# map_proxy_func("map_chla", chla.df)
# 
# #chla legend
# map_legend_func("map_chla", chla.df)