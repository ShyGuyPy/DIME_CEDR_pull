
NWIS_pull <- function( ) {
data.df<- EGRET::readNWISDaily("01491000", "00060","1979-10-01", "2010-09-30")

return(data.df)

}