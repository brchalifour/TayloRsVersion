usethis::use_package("cowplot")
usethis::use_package("colorblindr")

# Define a function to test each palette and plot the results
test_colorblindness <- function(palette) {
  # Plot the original colors
  plot <- show_tayloR_palette(palette)

  # Create grid of colorblind versions of palette
  colorblindr::cvd_grid(plot)
}
