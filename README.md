
# TayloRsVersion

<!-- badges: start -->
<!-- badges: end -->

This package contains color palettes for R data visualization that are inspired by Queen Taylor Swift's albums and eras. I am in no way associated with Taylor (but would love to be). 

## Available Album Palettes

Below, here are all of the palettes currently available. These will be updated as Taylor's Versions become available.

![All Palettes](tay_pals.png)

## Installation

To install TayloRsVersion, run the following in your `R` console:

``` r
devtools::install_github("brchalifour/TayloRsVersion")
```

## Example

This is a basic example which shows you how to use TayloRsVersion. For fun, let's use data on my personal top 20 favorite Taylor songs:

``` r
# Run once: 
devtools::install_github("brchalifour/TayloRsVersion")
library(TayloRsVersion)
library(ggplot2)

# Read in data
songs <- read.csv("https://raw.githubusercontent.com/brchalifour/TayloRsVersion/master/TS_data.csv")

# Count the number of songs per album
songs_count <- table(songs$Album)

songs_countdf <- as.data.frame(songs_count)

# Rename column 1 to "Album"
names(songs_countdf)[1] <- "Album"

# Create a bar graph of my favorite songs by album
ggplot(data = songs_countdf) + 
  geom_bar(aes(x = Album, y = Freq, fill = Album), stat = "identity") + 
  scale_fill_manual(values = tayloR_palette("fearless_TV2"), guide = "none") + 
  xlab("Album") + ylab("Number of Songs") + 
  theme_minimal() +
  theme(axis.text.x = element_text(size = 12, angle = 30, hjust = 1)) +
  theme(axis.text.y = element_text(size = 12)) +
  theme(axis.title.x = element_text(size = 14, face = "bold")) +
  theme(axis.title.y = element_text(size = 14, face = "bold"))
  
# Create a pie chart of my favorite songs by album:

pie(songs_count, main="My Favorite TS Songs by Album", col = tayloR_palette("lover"))

```
These produce the following output, first, a bar plot of favorite songs by album, then a pie chart:

![Top 20 Favorite Taylor Songs - Bar Plot](Bar_plot_songs.png)

![Top 20 Favorite Taylor Songs - Pie Chart](Top20.png)

If I'm not sure what palette I want to use, I can view palettes this way:

``` r
show_TayloR_palette("midnights")
```
Which produces the following output:

![Midnights Colors](midnights.png)

If you use TayloRsVersion, please let me know! I would love to see what you create.

### Taylor, please notice me.

![Taylor Being Cute](https://media.giphy.com/media/17YGKHTrrkOV8XdPWi/giphy.gif?cid=ecf05e47wkkvos9j71m9goid571svpxvi902utab5zy1vfij&rid=giphy.gif&ct=g)
