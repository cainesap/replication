## you need to have installed rmarkdown from CRAN
# install.packages('rmarkdown')

## load package
library(rmarkdown)

## process rmarkdown source file
rmarkdown::render('slides.Rmd')
