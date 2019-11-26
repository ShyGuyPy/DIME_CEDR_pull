#S------------dashboard page------------------------------
dashboardPage(skin = "purple",
              
#S------------dashboard header----------------------------
              dashboardHeader(title = "DIME data pull",
                              .list = NULL
              ),#end of dashboardheader
#E-------------------end dashboard header---------------------

#S-------------------sidebar---------------------------
dashboardSidebar(
  width = 250,
  #E-----------------------date input---------------------
  dateRangeInput("plot_range",
                 "Specify plot range",
                 start = min_date,
                 #               start = "2019-05-01",
                 #               end = "1930-12-31",
                 # start = date_start,
                 end = max_date,
                 format = "yyyy-mm-dd",
                 width = NULL),
  #E---------------------end date input--------------------
  
  #S----------------------action buttons--------------------
  actionButton("download_phyto_data",
               "Download data",
               icon = NULL,
               width = "220px"
               ),
  #E----------------------end of action buttons------------
  
  #S----------------------action buttons--------------------
  actionButton("data_to_download",
               "Plot Data",
               icon = NULL,
               width = "220px")
  #E----------------------end of action buttons------------
  ),#end of dashboardsidebar
#E------------------end of sidebar-------------------------

#S-----------------dashboard body--------------------------
dashboardBody(  
  fluidRow(
  column(
    width = 8,
    box(
      title = NULL,
      width = NULL,
    
  plotOutput("plot_the_data", width = "500px", height = "500px" )
    )#end of box
  )#end col
  )#end fluidrow
),#end of dashboardbody
#E----------------end of dashboard body-----------------------

)#end of dashboard page
#E---------------end of dashboard page-----------------------