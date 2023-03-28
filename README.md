
# TayloRsVersion

<!-- badges: start -->
<!-- badges: end -->

This package contains color palettes for R data visualization that are inspired by Queen Taylor Swift's albums and eras. I am in no way associated with Taylor (but would love to be).

## Installation

To install TayloRsVersion, run the following in your `R` console:

``` r
`devtools::install_github("brchalifour/TayloRsVersion")`.
```

## Example

This is a basic example which shows you how to use TayloRsVersion. For fun, let's use data on my personal top 20 favorite Taylor songs:

``` r
# Run once: 
devtools::install_github("brchalifour/TayloRsVersion")`
library(TayloRsVersion)`
library(ggplot2)

# Read in data
songs <- read.csv("https://raw.githubusercontent.com/brchalifour/TayloRsVersion/master/TS_data.csv")

# Count the number of songs per album
songs_count <- table(songs$Album)

# Create a pie chart of my favorite songs by album:

pie(songs_count, main="My Favorite TS Songs by Album", col=TayloR_palette("midnights2"))

```

If I'm not sure what palette I want to use, I can view palettes this way:

``` r
show_TayloR_palette("lover")
```

