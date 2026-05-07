# Retatrutide vs Placebo → GLP-1 Analysis

A reproducible analysis of the Phase 2 clinical trial of Retatrutide, a new GLP-1 receptor agonist for treating obesity. We compare weight loss outcomes across the placebo group and six different Retatrutide doses, and benchmark the results against semaglutide and the broader GLP-1 class.

## Overview

We looked at the Phase 2 trial of Retatrutide published in NEJM in 2023, which randomized 338 adults with obesity into seven groups: a placebo group and six different doses of Retatrutide ranging from 1 mg to 12 mg. Over 48 weeks, the researchers tracked weight loss, BMI, waist circumference, and side effects.

The goal was to see whether Retatrutide actually causes weight loss, how strong the dose response effect is and what the placebo group tells us about whether the weight loss is being caused by the drug itself rather than lifestyle changes or trial effects.

## Key Findings

- Retatrutide produces clear dose dependent weight loss
- The 12 mg group lost about a quarter of their starting body weight in 48 weeks
- The placebo group barely moved, which makes the rest of the numbers credible
- 100% of participants on the higher doses lost at least 5% of their body weight
- Retatrutide looks more powerful than semaglutide, the current leading GLP-1 drug

## Data Sources and Acknowledgements

All data was hand extracted from published clinical trial tables.

- **NEJM 2023 Retatrutide Phase 2 Trial** (Jastreboff et al., 2023) : main source for baseline characteristics and outcomes. ClinicalTrials.gov
- **FDA Semaglutide Product Label** (FDA, 2023) : used for semaglutide comparison numbers
- **PMC GLP-1 Review Article** (PMC, 2024): used for class context on the GLP-1 drug class
- **Course:** STAT 184, Penn State, Spring 2026

## Meta Goals

1. Strengthen our understanding of causal inference in clinical trial data, specifically treatment vs placebo comparisons.
2. Produce a reproducible analysis so anyone with our repo can run it and follow along.

See PLAN.md for the detailed plan

## Repo Structure

- `README.md` — this file
- `PLAN.md` — detailed project plan
- `Retatrutide.qmd` — main report file
- `Retatrutide.pdf` — rendered final report

## How to Reproduce

1. Clone the repo
2. Open `Retatrutide.qmd` in RStudio
3. Make sure you have the required packages installed: `tidyverse`, `knitr`, `kableExtra`, `ggplot2`
4. Render to PDF using the Render button or run `quarto render Retatrutide.qmd` in the terminal

## Authors

- George Dayoub — ged5222@psu.edu
- Anshruta Rahar — asr5768@psu.edu
- Jin Won — jbw6513@psu.edu
