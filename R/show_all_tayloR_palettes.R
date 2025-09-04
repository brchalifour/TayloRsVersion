show_all_tayloR_palettes <- function() {
  require(ggplot2)
  
  palette_names <- c(
    "debut", "debut2",
    "fearless", "fearless2",
    "speak_now", "speak_now2",
    "red", "red2",
    "nineteen_eighty_nine", "nineteen_eighty_nine2",
    "reputation", "reputation2",
    "lover", "lover2",
    "folklore", "folklore2",
    "evermore", "evermore2",
    "midnights", "midnights2",
    "ttpd",
    "showgirl", "showgirl2",
    "all_albums", "all_albums2",
    "karma"
  )
  
  plot_data <- do.call(rbind, lapply(palette_names, function(name) {
    cols <- tayloR_palette(name)
    data.frame(
      palette = name,
      color = cols,
      index = seq_along(cols),
      stringsAsFactors = FALSE
    )
  }))
  
  # Reverse the order of factor levels so debut is at bottom
  plot_data$palette <- factor(plot_data$palette, levels = rev(palette_names))
  
  ggplot(plot_data, aes(x = index, y = palette, fill = color)) +
    geom_tile(width = 1, height = 0.9) +
    scale_fill_identity() +
    theme_void() +
    theme(
      axis.text.y = element_text(size = 10, hjust = 1),
      plot.margin = margin(10, 20, 10, 20),
      panel.spacing = unit(1, "lines")
    ) +
    labs(title = "All tayloR Palettes ", y = NULL, x = NULL)
}


show_all_tayloR_palettes()
