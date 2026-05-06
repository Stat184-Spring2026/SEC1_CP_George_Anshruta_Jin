#loading the packages
library(tidyverse)
library(rvest)
library(ggplot2)

#loading the retatrutide dataset from the gov website
RetatrutideRawData <- read_html(
  x = "https://pmc.ncbi.nlm.nih.gov/articles/PMC12026077/"
)|>

  html_elements(css="table") |>
  html_table()

#loading the specific table
RetatrutideEffects <- RetatrutideRawData[[4]]

#loading the semaglutide dataset from the govt website
SemaglutideRawData <- read_html(
  x = "https://pmc.ncbi.nlm.nih.gov/articles/PMC7905697/"
)|>

  html_elements(css = "table")|>
  html_table()

#loading the semaglutide effects table
SemaglutideEffects <- SemaglutideRawData[[3]]


##cleaning data for retatrutide
RetatrutideCData <- RetatrutideEffects |>
  mutate(
    RR = as.numeric(str_extract(`Pooled effect size, RR (95% CI)`, "^[0-9.]+")),
    LowerCI = as.numeric(str_extract(`Pooled effect size, RR (95% CI)`, "(?<=\\()[0-9.]+")),
    UpperCI = as.numeric(str_extract(`Pooled effect size, RR (95% CI)`, "(?<=, )[0-9.]+"))
  )


ggplot(RetatrutideCData,
       aes(
         x = RR,
         y = `Outcome variables`,
       ))+
  geom_point()+
  labs(
    title = "Risk Ratio of Adverse Effects of Retatrutide",
    x = "Risk Ratio(RR)",
    y = "Adverse Effects"
  )

