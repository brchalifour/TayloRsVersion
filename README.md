# `TayloRsVersion`: R Color Palettes (Taylor's Version)

## Description (It's me! Hi!)

This package contains color palettes for R data visualization that are inspired by Queen Taylor Swift's albums and eras. I am in no way associated with Taylor (but would love to be), I just stayed up way too late one night doing this because I'm the problem, it's me.

![AHHHH](https://media.giphy.com/media/5ymIg7UX6i7F6/giphy.gif?cid=ecf05e47ahruwlhll6avsxs1yt608siwacdeln2mvvjc5pgc&rid=giphy.gif&ct=g)

## Available Palettes (From lavender haze to burning red)

Below, here are all of the palettes currently available. These are currently updated through The Life of a Showgirl, which absolutely WILL become my whole personality beginning on October 3rd!

![All Palettes](images/allTayloRs.jpg)

## Installation (Are you ready for it?)

To install TayloRsVersion, run the following in your `R` console:

``` r
devtools::install_github("brchalifour/TayloRsVersion")
```

To list the names of all palettes available on TayloRsVersion, run the following in your `R` console:

``` r
list_tayloR_palettes()
```

## Examples (Look what you made me do)

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

songs_countdf$Album <- factor(songs_countdf$Album, levels = c("Debut", "Fearless", "Speak Now", "Red", "Nineteen Eighty-Nine", "Reputation", "Lover", "Folklore", "Evermore", "Midnights", "The Tortured Poets Department"))

# Create a bar graph of my favorite songs by album
ggplot(data = songs_countdf) + 
  geom_bar(aes(x = Album, y = Freq, fill = Album), stat = "identity") + 
  scale_fill_manual(values = tayloR_palette("all_albums2"), guide = "none") + 
  xlab("Album") + ylab("Number of Songs") + 
  theme_minimal() +
  theme(axis.text.x = element_text(size = 12, angle = 30, hjust = 1)) +
  theme(axis.text.y = element_text(size = 12)) +
  theme(axis.title.x = element_text(size = 14, face = "bold")) +
  theme(axis.title.y = element_text(size = 14, face = "bold")) 
```
This produces the following output, a bar plot of favorite songs by album, with bars colored by era:

![Top 20 Favorite Taylor Songs - Bar Plot](images/Bar_plot_songs.png)

Or, I can look at my favorite songs by album genre:

``` r
# Count the number of songs per genre
genre_count <- table(songs$Genre)

# Create a pie chart of my favorite songs by album genre:
par(mar=c(0,0,2,2)) # adjust the margin size
pie(genre_count, main="My Favorite TS Songs by Genre", col = tayloR_palette("fearless_TV2"), radius = 1.5)
title(main="My Favorite TS Songs by Genre", cex.main = 1.2) # adjust the title size
```
This produces the following output, a Fearless pie chart of favorite songs by genre:

![Top 20 Favorite Taylor Songs - Pie Chart](images/fearless_pie.png)

Some other examples of palette usage are found below, including a graph of song danceability versus duration using the Debut palette:

![Debut Comparison](images/Debut_Comparison.png)

And a word cloud of most commonly used words in Taylor's songs using the 1989 palette:

![1989 Comparison](images/1989_Comparison.png)

## Other Functions

If I'm not sure what palette I want to use, I can view all palettes this way:

``` r
show_all_tayloR_palettes()
```
Which produces the following output:

![All Palettes](images/showall.jpeg)

Or individual palettes this way:

``` r
show_tayloR_palette("showgirl")
```
Which produces the following output:

![Showgirl Colors](images/showgirl.jpeg)

In the spirit of inclusivity, I have added a function to show what palettes look like with different forms of colorblindness. For instance, I can run the following command:

``` r
test_colorblindness("lover")
```
Which produces the following output, showing how the Lover palette appears under varying forms of colorblindness.

![Lover Colorblind Test](images/lover_tcb.png)

## Long Story Short...

If you use TayloRsVersion, please let me know! I would love to see what you create. 

BONUS: Can you find the secret easter egg palette?

### Taylor, please notice me.

![Taylor Being Cute](https://media.giphy.com/media/17YGKHTrrkOV8XdPWi/giphy.gif?cid=ecf05e47wkkvos9j71m9goid571svpxvi902utab5zy1vfij&rid=giphy.gif&ct=g)
