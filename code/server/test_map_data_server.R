
#
if(file.exists(paste0(#project.dir,
  active_path, "active_data.csv"))){#"data/ACTIVE/active_data.csv")){

  #assign active_data
  active_data.df <- data.table::fread(paste0(#project.dir, 
    active_path, "active_data.csv"),
                                      header = TRUE,
                                      data.table = FALSE)
  
  salinity.df <- active_data.df %>%
    filter(parameter == "salinity")
  
  chla.df <- active_data.df %>%
    filter(parameter == "chla")
}#end if exists

if(#if_empty(active_data.df)){
  file.exists(paste0(#project.dir,
    active_path, "active_data.csv"))){

  
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

}#end if exists



#https://stackoverflow.com/questions/41960953/how-to-listen-for-more-than-one-event-expression-within-a-shiny-observeevent
#creates a reactive that responds to both inputs(data selection and map tab click)
toListenMap <- reactive({
  list(input$select_data,input$map_data_tab)
})

#activates on map tab selection
toListenMap2 <- reactive({
  list(input$map_data_tab)
})


#update map after data is selected and map tab is selected
observeEvent(input$selected_tab,#
             {

               #only runs if active_data has been assigned and written to directory
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

                 chla.df <- active_data.df %>%
                   filter(parameter == "chla")

                 pal <- colorNumeric(palette = c("yellow","purple"), domain = active_data.df$measurevalue)




 #checks if active_data.df has data
 if(if_empty(active_data.df)){#(empty(active_data.df) == FALSE || is.na(empty(active_data.df))){
  
   #check if chla.df has data
   if(if_empty(salinity.df)){  
   
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
   
 }#end of check if salinity.df has data
   
   
     
   
   #check if chla.df has data
   if(if_empty(chla.df)){

   #chla map proxy
   proxy <- leafletProxy("map_chla", data = chla.df$measurevalue) %>%
     clearMarkers() %>%
     addCircleMarkers(data = chla.df,
                      lng = ~longitude,
                      lat = ~latitude,
                      radius = 6,
                      #fillColor = ~ "Blues",
                      fillColor = ~ pal(chla.df$measurevalue),
                      #pal(chla.df$measurevalue),
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
   
   
     

   
   }#end of check if chla.df has data

 }#end of if length != 0

               }#end of if exist active_data
             })#end of observe event


if(if_empty(active_data.df)){

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

}#end if exists