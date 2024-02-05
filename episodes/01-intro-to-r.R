load_packages <- function(){
  # Packages ####
  # once you install packages to your computer, you can "check them out" of your packages library each time you need them
  # make sure you check the "mask" messages that appear - sometimes packages have functions with the same names!

    library(tidyverse)# really neat collection of packages! https://www.tidyverse.org/
    library(lubridate)
    library(readxl)
    library(viridis)
    library(plotly)
    library(ggmap)
}


set_working_directory <- function(working_directory){
  # Working Directory ####

  #Instructors!! since this lesson is mostly base R we're not going to make four copies of it as with the other nodes.
  #Change this one line as befits your audience.
  setwd(working_directory) #set folder you're going to work in
  getwd() #check working directory

  #you can also change it in the RStudio interface by navigating in the file browser where your working directory should be
  #(if you can't see the folder you want, choose the three horizonal dots on the right side of the Home bar),
  #and clicking on the blue gear icon "More", and select "Set As Working Directory".
}
