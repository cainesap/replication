# demo Shiny App for Glottolog data
====

* ui.R and server.R required (see [Shiny website]())
* to run locally, do as follows:

```
install.packages('shiny')  # if necessary
library(shiny)
runApp()  # from same directory as ui.R and server.R; will open in browser
```

* to deploy to the Shinyapps.io platform:
  - register at http://www.shinyapps.io
  - install `shinyapps` package and connect to your account ([instructions here](http://shiny.rstudio.com/articles/shinyapps.html))
  - deploy app:

```
library(shinyapps)
deployApp()  # will open in browser, by default with url: http://<yourusername>.shinyapps.io/<yourdirectoryname>
#terminateApp('<nameOfApp>')  # if/when you want to take the app down
```
