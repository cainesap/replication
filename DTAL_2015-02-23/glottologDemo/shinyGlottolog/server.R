#### map of 'languoids' from Glottolog: http://glottolog.org/
#### by Andrew Caines for DTAL PhD workshop: Reproducible Research
#### server file for Shiny App: see http://shiny.rstudio.com/


## required package(s)
library(ggplot2)

## load data from file
filecsv <- 'languoids.csv'
languoids <- read.csv(filecsv)

## server commands
shinyServer(function(input, output, session) {

  ## render plot
  output$glottoplot <- renderPlot({
    p <- ggplot(data = languoids, aes(x = lon, y = lat))
    p + geom_point(aes(colour = status))
  })

  ## make data available for download
  output$downloadData <- downloadHandler(
    filename = function() { filecsv },
    content = function(file) {
      write.csv(languoids, file)
    }
  )

})
