# renders Rmd files per its YAML to save time rendering each manually
# the rendered (md) goes to github

library(rmarkdown)
render_Rmd <- function(file_names){
  lapply(file_names, function(x){render(x)})
  }

# add one line for each new level of subdirectory
render_Rmd(Sys.glob("*.Rmd"))
render_Rmd(Sys.glob("*/*.Rmd"))

unlink("pages/*.html")
