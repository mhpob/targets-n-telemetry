detection_maker <- function(species, n_fish, n_dets, n_stations,
                            st_time, end_time){
  stations <- paste('station', 1:n_stations, sep = '-')
  fish <- paste(species, 1:n_fish, sep = '-')
  datetimes <- seq.POSIXt(st_time, end_time, by = 'sec')
  
  data.frame(
    id = sample(fish, n_dets, replace = TRUE),
    station = sample(stations, n_dets, replace = TRUE),
    datetime = sample(datetimes, n_dets, replace = FALSE)
  )
  
  #detection_maker('jimmy', 20, 100, 5,
  # as.POSIXct('2023-01-01 00:00:00'), as.POSIXct('2023-05-15 12:00:00'))
}
