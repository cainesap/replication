#### map of 'languoids' from Glottolog: http://glottolog.org/
#### by Andrew Caines for DTAL PhD workshop: Reproducible Research
#### load data, make plot, upload to Plotly


## set working directory if using interactive R console; e.g. --
#setwd('~/Dropbox/workspace/gitHub/replication/DTAL_2015-02-23/glottologDemo/plotly')


## LOAD DATA from file
languoids <- read.csv(file = 'languoids.csv')

## inspect data.frame
str(languoids)
head(languoids)


## MAKE PLOT: ggplot map
#install.packages('ggplot2')  # install if necessary
library(ggplot)
p <- ggplot(data = languoids, aes(x = lon, y = lat))
p <- p + geom_point(aes(colour = status))

## view locally
p


## UPLOAD to Plotly: register for free at https://plot.ly
#install.packages('devtools')  # install from GitHub if necessary
#library(devtools)
#install_github("ropensci/plotly")
library(plotly)

## find your username and API key from https://plot.ly/settings/api
uname <- "yourusername"
apikey <- "yourkey"

## open connection to API
pltly <- plotly(username = uname, key = apikey)

## upload plot (will open in browser: be patient)
pltly$ggplotly(p)
