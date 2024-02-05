scrape_episodes <- function(gh_url){
  gh_url |>
    readLines(warn = FALSE) |>
    strsplit("path") |>
    unlist() |>
    grep("_episodes/\\d{2}-", x = _, value = T) |>
    strsplit(':\\\"') |>
    lapply(function(.) .[grepl("^_episodes", .)]) |>
    unlist() |>
    gsub('_episodes/|\\.md.*', '', x = _)
}


create_episode_files <- function(episodes){
  episode_file <- episodes |>
    paste0(... = _, ".R") |>
    file.path('episodes', ... = _)

  if(file.exists(episode_file) == FALSE){
    file.create(episode_file, showWarnings = FALSE)
  }

  episode_file
}
