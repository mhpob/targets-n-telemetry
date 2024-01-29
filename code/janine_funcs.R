## Janine is just all over the place, where she shouldn't be
## We know Janine shouln't ever visit station-4, so drop those

bad_janine <- function(detections){
  janine <- detections[grepl('janine', detections$id),]
  
  janine[janine$station != 'station-4',]
}


# Also, we know everything in January is wrong
naughty_janine <- function(janine){
  janine[janine$datetime >= as.POSIXct('2023-02-01 00:00:00'),]
}



