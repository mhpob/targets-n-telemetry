
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

``` mermaid

graph LR
  style Legend fill:#FFFFFF00,stroke:#000000;
  style Graph fill:#FFFFFF00,stroke:#000000;
  subgraph Legend
    direction LR
    x0a52b03877696646([""Outdated""]):::outdated --- x7420bd9270f8d27d([""Up to date""]):::uptodate
    x7420bd9270f8d27d([""Up to date""]):::uptodate --- x70a5fa6bea6f298d[""Pattern""]:::none
    x70a5fa6bea6f298d[""Pattern""]:::none --- xbf4603d6c2c2ad6b([""Stem""]):::none
    xbf4603d6c2c2ad6b([""Stem""]):::none --- xf0bce276fe2b9d3e>""Function""]:::none
  end
  subgraph Graph
    direction LR
    xe9ceb3fe883ef5c3>"create_episode_files"]:::uptodate --> xd4161713752b5018["episode_files"]:::outdated
    xfb9b9ca99c4d8b6b(["episodes"]):::outdated --> xd4161713752b5018["episode_files"]:::outdated
    x33dd63777947517e(["gh_url"]):::outdated --> xfb9b9ca99c4d8b6b(["episodes"]):::outdated
    xdb45158cddfb092d>"scrape_episodes"]:::uptodate --> xfb9b9ca99c4d8b6b(["episodes"]):::outdated
    xc0f1f497805151b9>"set_working_directory"]:::uptodate --> x890a7fb5cf92cd64(["wd"]):::outdated
    x2de7740755390a74(["weight_kg"]):::outdated --> x431fde9b77dbac5d(["ten"]):::outdated
    x2de7740755390a74(["weight_kg"]):::outdated --> x85ee392d502c4b84(["weight_lb"]):::outdated
    xdee6b1a92c8a696a(["maths"]):::outdated --> xdee6b1a92c8a696a(["maths"]):::outdated
    x22d086ba31151058(["pi_round"]):::outdated --> x22d086ba31151058(["pi_round"]):::outdated
    xcb5dcbbf84710e67(["round_args"]):::outdated --> xcb5dcbbf84710e67(["round_args"]):::outdated
    xbae09f9ade455521(["round_help"]):::outdated --> xbae09f9ade455521(["round_help"]):::outdated
    x07ee2f38b732653b>"load_packages"]:::uptodate --> x07ee2f38b732653b>"load_packages"]:::uptodate
  end
  classDef outdated stroke:#000000,color:#000000,fill:#78B7C5;
  classDef uptodate stroke:#000000,color:#ffffff,fill:#354823;
  classDef none stroke:#000000,color:#000000,fill:#94a4ac;
  linkStyle 0 stroke-width:0px;
  linkStyle 1 stroke-width:0px;
  linkStyle 2 stroke-width:0px;
  linkStyle 3 stroke-width:0px;
  linkStyle 11 stroke-width:0px;
  linkStyle 12 stroke-width:0px;
  linkStyle 13 stroke-width:0px;
  linkStyle 14 stroke-width:0px;
  linkStyle 15 stroke-width:0px;
```
