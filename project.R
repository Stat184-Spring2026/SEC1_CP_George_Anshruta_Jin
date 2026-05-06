#loading the packages
library(tidyverse)
library(rvest)
library(ggplot2)


#loading the dataset
RetatrutideEffects <- read_csv("cleaned_dataset_retatrutide.csv")


##cleaning data for retatrutide
RetatrutideCData <- RetatrutideEffects |>
  mutate(
    RR = as.numeric(str_extract(`Pooled effect size, RR (95% CI)`, "^[0-9.]+")),
    LowerCI = as.numeric(str_match(`Pooled effect size, RR (95% CI)`, "\\(([0-9.]+),\\s*([0-9.]+)\\)")[,2]),
    UpperCI = as.numeric(str_match(`Pooled effect size, RR (95% CI)`, "\\(([0-9.]+),\\s*([0-9.]+)\\)")[,3])
  )


##table
RetatrutideSummary <- RetatrutideCData |>
  mutate(
    Significant = ifelse(LowerCI > 1, "Yes", "No")
  )|>
  group_by(`Outcome variables`) |>
  slice_max(RR, n = 1, with_ties = FALSE) |>
  ungroup() |>
  select(
    `Outcome variables`,
    `Retatrutide arm (mg/week)`,
    RR,
    LowerCI,
    UpperCI,
    Significant
  )

View(RetatrutideSummary)

##graph on the risk ratio of effects of taking retatrutide
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

