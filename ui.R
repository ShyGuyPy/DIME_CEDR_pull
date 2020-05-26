# UI---------------------------------------------------------------------------
ui <- fluidPage(useShinyjs(),
                includeCSS("www/CSS/main.css"),
                
                #S------------dashboard page------------------------------
                dashboardPage(skin = "blue",
                              
                              #S------------dashboard header----------------------------
                              dashboardHeader(title = "DIME Data Quick Look", titleWidth = 300,
                                              .list = NULL
                              ),#end of dashboardheader
                              #E-------------------end dashboard header---------------------
                              
                              #S-------------------sidebar---------------------------
                              dashboardSidebar(width = 200,
                                               sidebarMenu(id ="selected_tab",
                                                 menuItem("Instructions", tabName = "instructions_tab"),
                                                 menuItem("Download Data", tabName = "download_data_tab"),
                                                 menuItem("Select Data", tabName = "select_data_tab"),
                                                 menuItem("Error Report", tabName = "error_report_tab"),
                                                 menuItem("Summary Page", tabName = "summary_page_tab"),
                                                 menuItem("Graph Data", tabName = "plot_data_tab"),
                                                 menuItem("Map Data", tabName = "map_data_tab")
                                                
                                               )#end of sidebarMenu
                              ),#end of dashboardsidebar
                              #E------------------end of sidebar-------------------------
                              
                              #S-----------------dashboard body--------------------------
                              dashboardBody(tabItems(
                                tabItem(tabName = "instructions_tab",
                                        source("code/ui/instructions_ui.R", local = TRUE)$value
                                ),#end of instruction tabItem
                                
                                tabItem(tabName = "download_data_tab",
                                        source("code/ui/download_data_ui.R", local = TRUE)$value
                                ),#end of download data tabItem
                                
                                tabItem(tabName = "select_data_tab",
                                        source("code/ui/select_data_ui.R", local = TRUE)$value
                                ),#end of select data tabItem
                                
                                tabItem(tabName = "error_report_tab",
                                        source("code/ui/error_report_ui.R", local = TRUE)$value
                                ),#end of error report tabItem
                                
                                tabItem(tabName = "summary_page_tab",
                                        source("code/ui/summary_page_ui.R", local = TRUE)$value
                                ),#end of summary page tabItem
                                
                                tabItem(tabName = "plot_data_tab",
                                        source("code/ui/plot_data_ui.R", local = TRUE)$value
                                ),#end of plot data tabItem
                                
                                tabItem(tabName = "map_data_tab",
                                        source("code/ui/map_data_ui.R", local = TRUE)$value
                                )#end of map tabItem
                                
                              )#end of tabItems
                                
                                ),#end of dashboardbody
                              #E----------------end of dashboard body-----------------------
                              
                )#end of dashboard page
                #E---------------end of dashboard page-----------------------
                              
                )#end fluidpage
                #E---------------end of fluidpage-----------------------
                