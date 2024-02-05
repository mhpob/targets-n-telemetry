# Created by use_targets().
# Follow the comments below to fill in this target script.
# Then follow the manual to check and run the pipeline:
#   https://books.ropensci.org/targets/walkthrough.html#inspect-the-pipeline

# Load packages required to define the pipeline:
library(targets)
library(tarchetypes) # Load other packages as needed.

# Set target options:
tar_option_set(
  packages = c("tibble"), # packages that your targets need to run
  format = "qs" # Optionally set the default storage format. qs is fast.
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
# options(clustermq.scheduler = "multiprocess")

# tar_make_future() is an older (pre-{crew}) way to do distributed computing
# in {targets}, and its configuration for your machine is below.
# Install packages {{future}}, {{future.callr}}, and {{future.batchtools}} to allow use_targets() to configure tar_make_future() options.

# Run the R scripts in the R/ folder with your custom functions:
tar_source('episodes/')
# source("other_functions.R") # Source other scripts as needed.

# Replace the target list below with your own:
list(
  # Episode 00 (set up)
  tarchetypes::tar_url(
    gh_url,
    "https://github.com/ocean-tracking-network/otn-workshop-base/tree/gh-pages/_episodes"
  ),
  tar_target(episodes, scrape_episodes(gh_url)),
  tar_target(episode_files,
             create_episode_files(episodes),
             pattern = map(episodes)),

  # Episode 01: Intro to R

  #tar_target(packages_loaded, load_packages()), # you would actually put the packages in line 12, above
  tar_target(wd, set_working_directory(getwd())),

  tar_target(maths, 3 + 5),
  tar_target(weight_kg, 100),
  tar_target(weight_lb, 2.2 * weight_kg),

  # Variables Challenge:
  ## To mimic the challenge using targets, replace the target for `weight_kg`
  ##    with 100, save, and run `targets::tar_make()`. Only `weight_kg` and
  ##    `weight_lb` (and `gh_url`) will re-run.

  # Functions
  tar_target(ten, sqrt(weight_kg)),
  tar_target(pi_round, round(pi)),

  tar_target(round_args, args(round)),
  tar_target(round_help, ?round)

  # Functions Challenge:
  ## To mimic the challenge using targets, replace the target for "pi_round"
  ##    with one of the specifications below and run `targets::tar_make()`.
  ##    Since the code specifying the target has changed, `pi_round` will re-run.
  # tar_target(pi_round, round(pi, 2)),
  # tar_target(pi_round, round(pi, digits = 2),
  # tar_target(pi_round, round(digits = 2, x = pi))

)
