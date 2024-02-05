
<!-- README.md is generated from README.Rmd. Please edit that file -->

# OTN Workshop targets

This branch is an exercise in converting the workflows outlined in the
living [OTN workshop
materials](https://ocean-tracking-network.github.io/otn-workshop-base/)
to [`targets`](https://docs.ropensci.org/targets/).

Pull requests are welcomed by anyone and everyone!

## To get started

1.  Clone this repository and switch to the `otn-workshop-targets`
    branch
2.  Open the `_targets.R` file
3.  Open up the [OTN workshop
    page](https://ocean-tracking-network.github.io/otn-workshop-base/)
    and select an episode
4.  Pick a chunk of code or an example
    1.  if it’s short, assign it directly to a target in the
        `_targets.R` file
    2.  if it’s long, wrap it in a function within the episode’s `.R`
        file in the `episodes/` directory
5.  Save `_targets.R`, run `targets::tar_make()`, and watch what
    happens!
6.  Run `tar_objects()` to see what was created
7.  Run `tar_read(some_object_name)` to look at a specific target
8.  Commit and push your changes
9.  Open a pull request!

## Completion

- [x] Setup/Background
- [ ] Intro to R
  - [x] Setting up R
  - [x] Operators
  - [x] Functions
  - [ ] Vectors and Data Types
  - [ ] Indexing and Subsetting
  - [ ] Missing Data
- [ ] Starting with Data Frames
- [ ] Intro to Plotting
- [ ] Telemetry Reports - Imports
- [ ] Telemetry Reports for Array Operators
- [ ] Telemetry Reports for Tag Owners
- [ ] Introduction to glatos Data Processing Package
- [ ] More features of glatos
- [ ] Basic Visualization and Plotting
- [ ] Introduction to actel
- [ ] Preparing ACT/OTN/GLATOS Data for actel
- [ ] Basic Animation
- [ ] Animation with pathroutr
- [ ] Quality Control Checks with Remora
- [ ] Spatial and Temporal Modelling with GAMs
- [ ] Introduction to the miscYAPS package
- [ ] Introduction to Git for Code
- [ ] Other OTN Telemetry Curricula

## Current network

``` r
targets::tar_visnetwork()
```

![](README_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->
