detection_count <- function(raw_dets, janine_fixed, bob_fixed){
  rbind(
    raw_dets[!grepl('janine', raw_dets$id),],
    janine_fixed,
    bob_fixed
  ) |> 
    nrow()
}
