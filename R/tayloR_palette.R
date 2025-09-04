tayloR_palette <- function(palette_name, n = NULL) {
  if(palette_name == "debut") return(c("#09a143", "#88c8bc", "#0cb1ea", "#a0c639", "#5a411f", "#79d2f6", "#f3d2a1", "#ea989f", "#648236", "#295042"))

  if(palette_name == "debut2") return(c("#92d7d6", "#038c95", "#9acbb6", "#aab45e", "#b27a78", "#c8d670", "#3cb3ab", "#37b4e0", "#94eefd", "#35f8e8"))

  if(palette_name == "fearless") return(c("#e3ce96", "#6c4d26", "#e9e3cd", "#d2b475", "#bc9f65", "#ab8346", "#98763f", "#9b8971", "#361f0a", "#c1b4b4"))

  if(palette_name == "fearless2") return(c("#efc619", "#949e63", "#85C7F2", "#cab35d", "#ebdb7a", "#ee964b", "#B66D0D", "#CBE896", "#DCABDF", "#F6DB79"))

  if(palette_name == "speak_now") return(c("#5d3161", "#c19889", "#92658e", "#e76e7f", "#3e1f4b", "#9c516e", "#90417e", "#eb8e9b", "#fbbfaf", "#7c472f"))

  if(palette_name == "speak_now2") return(c("#d5528e", "#4f3261", "#c97cae", "#e1ae7c", "#2d2560", "#e7a3c4", "#803f95", "#b286bf", "#97314b", "#be7074"))

  if(palette_name == "red") return(c("#961710", "#8a6d58", "#290c07", "#691801", "#acae9c", "#57503b", "#ab3b32", "#c0a78f", "#71503a", "#739b9c"))

  if(palette_name == "red2") return(c("#e04754", "#ffcbdd", "#7c0b2b", "#d10000", "#3e000c", "#568d66", "#004733", "#e28080", "#e95555", "#ef2b2b"))

  if(palette_name == "nineteen_eighty_nine") return(c("#94767e", "#d9d7e2", "#424959", "#7a9bbd", "#c2bab0", "#878d9c", "#a26548", "#bd997c", "#5980aa", "#c7ad8c"))

  if(palette_name == "nineteen_eighty_nine2") return(c("#ced1fd", "#d6ebff", "#8fc6da", "#9ea0e4","#7993ef", "#c38584", "#ded6f2", "#ae418d", "#c9673b","#f38485"))

  if(palette_name == "reputation") return(c("#0b4e45", "#92aca9", "#722930", "#c55135", "#082426", "#C30950", "#f99dcb", "#496dae", "#61c9c8", "#7B0828"))

  if(palette_name == "reputation2") return(c("#8b8c8b", "#6d625d", "#0a0808", "#c6b9b2", "#4a4d4d", "#7f2b41", "#8597b0", "#1625c9", "#a78f71", "#255442"))

  if(palette_name == "lover") return(c("#e6a5b9", "#f5d0c0", "#fde4bc", "#e2e5b1", "#c7c8a6", "#8cd3d4", "#87b3be", "#bbcbd8", "#ad7d8a", "#b69ca5"))

  if(palette_name == "lover2") return(c("#ff64b7", "#ab6dd2", "#beddbf", "#748cc1", "#aeced8", "#eee37c", "#f7b7ed", "#5d459f", "#aededd", "#ddd9b3"))

  if(palette_name == "folklore") return(c("#909e6c", "#9c7457", "#1e221b", "#908f53", "#b3b499", "#797f71", "#d5c39f", "#4e5b33", "#a9a9a6", "#6d5d3c"))

  if(palette_name == "folklore2") return(c("#7f7f7f", "#c4c4c4", "#333333", "#545454", "#a4a4a4", "#e1e1e1", "#afafaf", "#1a1a1a", "#444444", "#9b9a9b"))

  if(palette_name == "evermore") return(c("#d48452","#5f3819", "#bd3b22", "#b19d7a", "#97bab7", "#b47131", "#214E34", "#80604e", "#50A2A7", "#605a42"))

  if(palette_name == "evermore2") return(c("#423629","#fbf1ce", "#cba47d", "#816956", "#18170e", "#605550", "#9c8c7c", "#6b6457", "#696164", "#c4ac9c"))

  if(palette_name == "midnights") return(c("#4e5d85", "#6b7ba0", "#7593ad", "#92b4c5", "#6494a5", "#757175", "#cc9475",  "#bb5953", "#c8b7b2", "#50373b"))

  if(palette_name == "midnights2") return(c("#11159c", "#4eadd6", "#d2aec1", "#b17ba1", "#73dde1", "#15616d", "#9345b3",  "#789bd4", "#CFD11A", "#724CF9"))
  
  if(palette_name == "ttpd") return(c("#9a958d", "#d4cbbf", "#746c5b", "#47443a", "#d1cccc", "#3a3430", "#eae9e7",  "#6b6663", "#a89f90", "#5f5144"))
  
  if(palette_name == "showgirl") return(c("#65a484", "#e1733a", "#aec488", "#566b3f", "#dc501f", "#f89c51", "#8fc5a4", "#c17460", "#6cb2a4",  "#4c4112"))
  
  if(palette_name == "showgirl2") return(c("#45ae8d", "#0f6945", "#feaa52", "#ec760c", "#b5a3b3", "#b7f7d5", "#b8c27d", "#7e1d17", "#c82b3c", "#dd8c5d"))
  
  if(palette_name == "all_albums") return(c("#9BBD4C", "#F0DE42", "#C45AB3", "#9B1D20", "#99B2DD", "#25272D", "#FF85C2", "#94A3B3", "#B87D4B", "#11159c", "#9a958d", "#e1733a"))
  
  if(palette_name == "all_albums2") return(c("#8AE9C1", "#FCD757", "#885A89", "#F15025", "#AFC1D6", "#1B3022", "#EDC7CF",  "#86A397", "#524632", "#0B6884", "#d4cbbf", "#ee964b"))
  
  if(palette_name == "karma") return(c("#f69d0d", "#f45608", "#f41c34", "#e2068d", "#c200fb", "#2e005d", "#1957db",  "#7ea3f1", "#b83700", "#fbc55f"))

  if (!(palette_name %in% names(palettes))) {
    stop(paste0("Palette '", palette_name, "' not found."))
  }
  
  pal <- palettes[[palette_name]]
  if (is.null(n)) {
    return(pal)
  } else {
    return(pal[1:min(n, length(pal))])
  }
}



