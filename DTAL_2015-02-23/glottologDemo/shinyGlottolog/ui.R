#### map of 'languoids' from Glottolog: http://glottolog.org/
#### by Andrew Caines for DTAL PhD workshop: Reproducible Research
#### user-interface file for Shiny App: see http://shiny.rstudio.com/


shinyUI(fluidPage(

  titlePanel("Shiny App demo"),

  fluidRow(
    column(10, offset = 1,
      wellPanel(
        h4("Glottolog map"),
	plotOutput("glottoplot")
      )
    )
  ),

  fluidRow(
    column(3, offset = 1,
      wellPanel(
        downloadButton('downloadData', 'download this data'),
	br(),
        span(tags$a(href="https://github.com/cainesap/replication/tree/master/DTAL_2015-02-23/glottologDemo/shinyGlottolog", "view the code"))
      )
    )
  )

))
