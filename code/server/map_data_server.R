

# 
# #read file
# map_data.df <- data.table::fread(paste0(data_path, "data_modified.csv"),
#                                   header = TRUE,
#                                   data.table = FALSE) %>%
#   filter(parameter == "spcond")
# 
# 
# #dataframe_to_plot <- parameter_average()
# 
# output$mymap <- renderLeaflet({
#   m <- leaflet(data =map_data.df) %>%
#     addMarkers(lng= ~ longitude,
#                lat= ~ latitude)
#   
#   m
# })