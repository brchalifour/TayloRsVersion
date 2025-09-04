list_tayloR_palettes <- function() {
  palettes <- list(
    debut = tayloR_palette("debut"),
    debut2 = tayloR_palette("debut2"),
    fearless_TV = tayloR_palette("fearless"),
    fearless_TV2 = tayloR_palette("fearless2"),
    speak_now_TV = tayloR_palette("speak_now"),
    speak_now_TV2 = tayloR_palette("speak_now2"),
    red_TV = tayloR_palette("red"),
    red_TV2 = tayloR_palette("red2"),
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
    midnights2 = tayloR_palette("midnights2"),
    ttpd = tayloR_palette("ttpd"),
    ttpd2 = tayloR_palette("ttpd2"),
    showgirl = tayloR_palette("showgirl"),
    showgirl2 = tayloR_palette("showgirl2"),
    all_albums = tayloR_palette("all_albums"),
    all_albums2 = tayloR_palette("all_albums2"),
    karma = tayloR_palette("karma")
  )

  custom_palettes <- names(palettes)

  message(paste0("The following color palettes (Taylor's Version) are available: ", paste(custom_palettes, collapse = ", ")))
}
