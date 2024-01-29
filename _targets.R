# Created by use_targets().
# Follow the comments below to fill in this target script.
# Then follow the manual to check and run the pipeline:
#   https://books.ropensci.org/targets/walkthrough.html#inspect-the-pipeline

# Load packages required to define the pipeline:
library(targets)
# library(tarchetypes) # Load other packages as needed.

# Set target options:
tar_option_set(
  packages = c("tibble") # packages that your targets need to run
  # format = "qs", # Optionally set the default storage format. qs is fast.
  #
  # For distributed computing in tar_make(), supply a {crew} controller
  # as discussed at https://books.ropensci.org/targets/crew.html.
  # Choose a controller that suits your needs. For example, the following
  # sets a controller with 2 workers which will run as local R processes:
  #
  #   controller = crew::crew_controller_local(workers = 2)
  #
  # Alternatively, if you want workers to run on a high-performance computing
  # cluster, select a controller from the {crew.cluster} package. The following
  # example is a controller for Sun Grid Engine (SGE).
  # 
  #   controller = crew.cluster::crew_controller_sge(
  #     workers = 50,
  #     # Many clusters install R as an environment module, and you can load it
  #     # with the script_lines argument. To select a specific verison of R,
  #     # you may need to include a version string, e.g. "module load R/4.3.0".
  #     # Check with your system administrator if you are unsure.
  #     script_lines = "module load R"
  #   )
  #
  # Set other options as needed.
)

# tar_make_clustermq() is an older (pre-{crew}) way to do distributed computing
# in {targets}, and its configuration for your machine is below.
options(clustermq.scheduler = "multiprocess")

# tar_make_future() is an older (pre-{crew}) way to do distributed computing
# in {targets}, and its configuration for your machine is below.
# Install packages {{future}}, {{future.callr}}, and {{future.batchtools}} to allow use_targets() to configure tar_make_future() options.

# Run the R scripts in the R/ folder with your custom functions:
tar_source('code')
# source("other_functions.R") # Source other scripts as needed.

# Replace the target list below with your own:
list(
  
  # make some data
  tar_target(fish_spp, c('jim', 'bo', 'bob', 'janine', 'nadine',
                         'vera', 'aloe_vera', 'vera_tasty')),
  tar_target(
    dets_raw,
    detection_maker(fish_spp, 20, 100, 5,
                     as.POSIXct('2023-01-01 00:00:00'),
                     as.POSIXct('2023-05-15 12:00:00')),
    pattern = map(fish_spp)
  ),
  
  tar_target(
    fix_janine,
    bad_janine(dets_raw)
  ),
  
  tar_target(
    more_better_fixed_janine,
    naughty_janine(fix_janine)
  ),
  
  
  tar_target(
    bob_you_jerk,
    bob_summer(dets_raw)
  ),
  
  
  tar_target(
    final_n_detections,
    detection_count(dets_raw, more_better_fixed_janine, bob_you_jerk)
  )
)
