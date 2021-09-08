## packages loaded for all pages 
suppressPackageStartupMessages({
  library("data.table")
  library("ggplot2")
  library("ggthemes")
})


# generating new theme
theme_ds <- function(base_size = 10,
                      base_family = ""){
  theme_tufte(base_size = base_size, 
                base_family = base_family) %+replace%
    theme(
      axis.title = element_text(
        size = rel(0.9)),
      axis.text = element_text(
        color=rgb(105, 105, 105, maxColorValue = 255),
        size = rel(0.8)),
      legend.title = element_text(
        hjust = 0,
        size = rel(0.8)),
      legend.key.width = unit(0.5,"cm"),
      legend.key.height = unit(0.35,"cm"),
      plot.margin=unit(c(0.1,0.1,0.1,0.1), "cm"),
      complete = TRUE
    ) 

}


theme_set(theme_ds())


colorblindsafecolors <- c("#000000","#D55E00","#0072B2","#009E73","#CC79A7","#56B4E9","#E69F00","#F0E442")

scale_colour_discrete <- function(...) {
  scale_colour_manual(..., values = colorblindsafecolors)
}

scale_fill_discrete <- function(...) {
  scale_fill_manual(..., values = colorblindsafecolors)
}




## knitr options I want set as default for all ('global') code chunks
knitr::opts_chunk$set(echo = FALSE, message = FALSE, warning = FALSE)
