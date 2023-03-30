usethis::use_package("colorblindcheck")

# Define a function to test each palette and plot the results
test_colorblindness <- function(palette) {
  # Plot the original colors
  colplot <- tayloR_palette(palette)

  # # Create grid of colorblind versions of palette
  colorblindcheck::palette_check(colplot, plot = TRUE)
}
