## you need to have installed rmarkdown from CRAN
# install.packages('rmarkdown')

## load package
library(rmarkdown)

## process rmarkdown source files
rmarkdown::render('slides.Rmd')
rmarkdown::render('html_doc.Rmd')
rmarkdown::render('pdf_doc.Rmd')
