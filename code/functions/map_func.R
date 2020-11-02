source("code/server/test_map_data_server.R", local = TRUE)

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