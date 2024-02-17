# LOAD LIBRARIES ----
library(shiny)
library(lterdatasampler)
library(palmerpenguins)
library(tidyverse)
library(shinyWidgets)
library(markdown)
library(shinycssloaders)
library(sass)
library(shinythemes)

# COMPILE CSS ----
sass(
  input = sass_file("www/sass-styles.scss"),
  output = "www/sass-styles.css"
)

# GGPLOT THEME ----
myCustomTheme <- function() {
  theme_light() +
    theme(axis.text = element_text(size = 12),
          axis.title = element_text(size = 14, face = "bold"),
          legend.title = element_text(size = 14, face = "bold"),
          legend.text = element_text(size = 13),
          legend.position = "bottom",
          panel.border = element_rect(linewidth = 0.7))
}

# DATA WRANGLING ----

