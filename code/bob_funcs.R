# Bob only summers in Florida

bob_summer <- function(detections){
  bob <- detections[grepl('bob', detections$id),]
  
  bob[bob$datetime >= as.POSIXct('2023-06-01 00:00:00') &
        bob$datetime <= as.POSIXct('2023-10-31 00:00:00'),]
}
