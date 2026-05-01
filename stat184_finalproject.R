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




##loading the Retatrutide dataset from the org website
RetatrutideOrgRawData <- read_html(
  x = "https://www.nejm.org/doi/full/10.1056/NEJMoa2301972"
)|>
  
  html_elements(css = "table")|>
  html_table()in

RetatrutideOrgEffects <- RetatrutideOrgRawData[[2]]


# Getting the semaglutide & placebo column

SemaglutidePercent <- SemaglutideEffects |>
  # Selecting the semaglutide column
  select(2) |> 
  # Removing the bracket
  separate(
    1,
    into = c("personCount", "Semaglutide"),
    sep = " \\(") |>
  mutate(
    Semaglutide = str_remove(Semaglutide, "\\)")
  ) |>
  select(2)
  

PlaceboPercent <- SemaglutideEffects |>
  # Selecting the placebo column
  select(5) |>
  # Removing the bracket
  separate(
    1,
    into = c("personCount", "Placebo"),
    sep = " \\(") |>
    mutate(
      Placebo = str_remove(Placebo, "\\)")
    ) |>
  select(2)


Effects <- SemaglutideEffects |>
  select(1)

# Binding all the columns together
SemaglutidePlacebo <- bind_cols(
  Effects,
  SemaglutidePercent,
  PlaceboPercent
)  



