show_tayloR_palette <- function(palette_name) {

  # Define a list of pre-defined color palettes
  palettes <- list(
    debut = tayloR_palette("debut"),
    debut2 = tayloR_palette("debut2"),
    fearless_TV = tayloR_palette("fearless_TV"),
    fearless_TV2 = tayloR_palette("fearless_TV2"),
    speak_now = tayloR_palette("speak_now"),
    speak_now2 = tayloR_palette("speak_now2"),
    red_TV = tayloR_palette("red_TV"),
    red_TV2 = tayloR_palette("red_TV2"),
    nineteen_eighty_nine = tayloR_palette("nineteen_eighty_nine"),
    nineteen_eighty_nine2 = tayloR_palette("nineteen_eighty_nine2"),
    reputation = tayloR_palette("reputation"),
    reputation2 = tayloR_palette("reputation2"),
    lover = tayloR_palette("lover"),
    lover2 = tayloR_palette("lover2"),
    folklore = tayloR_palette("folklore"),
    folklore2 = tayloR_palette("folklore2"),
    evermore = tayloR_palette("evermore"),
    evermore2 = tayloR_palette("evermore2"),
    midnights = tayloR_palette("midnights"),
    midnights2 = tayloR_palette("midnights2")
  )

  # Check if the requested palette exists
  if (!(palette_name %in% names(palettes))) {
    stop(paste0("Palette '", palette_name, "' not found."))
  }

  # Display the color palette
  cols <- palettes[[palette_name]]
  ggplot() +
    geom_tile(aes(x=1:10, y=1, fill=factor(1:10))) +
    scale_fill_manual(values = cols) +
    theme_void() +
    annotate(geom = "text", x = 5, y = 1,
             label = paste0("Palette: '", palette_name, "'"),
             size = 8, color = "white", fontface = "bold") +
    guides(fill = "none")
}

