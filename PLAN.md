# Project Plan

## Team
- Jin Won
- Anshruta Rahar
- George Dayoub

## Topic
We're looking at GLP-1 drugs, specifically Retatrutide, which is one of the newer ones getting a lot of attention. The plan is to look at clinical trial data comparing Retatrutide to placebo to see if it works and how well it does.

## Goals
- Look at the Retatrutide vs placebo trial data and figure out what it actually says about the drug's effects.
- Get better at exploratory data analysis and writing reports that someone else could actually reproduce.

## Meta Goals
1. Get a stronger handle on causal inference in clinical trial data. Finding out what does it mean when treatment beats placebo, and how confident can we be about it.
2. Make the whole analysis reproducible. Anyone who clones our repo should be able to run it and get the same results.

## Research Questions
1. How does Retatrutide compare to placebo on weight change?
4. Does dose actually matter, or do you get most of the benefit at lower doses?

## What We Need
- The trial data from the published sources below
- GitHub for keeping our work organized
- Time to meet up at the Hub and work through stuff together
- Background reading on how GLP-1s actually work
- R and RStudio

## Data Sources
1. NEJM Retatrutide Phase 2 trial: https://www.nejm.org/doi/full/10.1056/NEJMoa2301972
2. FDA semaglutide label: https://www.accessdata.fda.gov/drugsatfda_docs/label/2023/209637s020s021lbl.pdf
3. PMC GLP-1 article: https://pmc.ncbi.nlm.nih.gov/articles/PMC12026077/
4. NEJM PDF: https://mediacenteratypon.nejmgroup-production.org/NEJMoa2301972.pdf
5. ClinicalTrials.gov Retatrutide trial: https://clinicaltrials.gov/study/NCT04881760

Most of our "data" is going to be summary stats and outcome tables pulled out of these papers, since individual patient data isn't public.

## Plan of Work

### Phase 1: Setup and Planning
- Team contract (Checkpoint #1) - Done
- Data and plan approval (Checkpoint #2) - Done
- GitHub repo check (Checkpoint #3) — 4/24
- Everyone sets up their dev branch

### Phase 2: Data Extraction
- Pull the relevant tables from the NEJM paper, FDA label, and PMC article into CSVs
- Cross check the numbers between sources to make sure we're not misreading anything
- Write down where each piece of data came from

### Phase 3: Exploratory Data Analysis
- Check the data against FAIr and CARE principles
- Each of us makes at least one table and one plot

### Phase 4: Writing the Report
- Quarto report with the narrative driving things, not just plots
- All the code goes in the Code Appendix
- Alt text on every figure and captions and cross refs throughout
- citations

### Phase 5: Presentation and Final Submission
- Work-in-Progress presentation the week of 4/27 - all three of us speak
- Final PDF submitted to Canvas with the repo link by 5/6
- Peer and self evaluations by 5/7

## What We're Doing Right Now
1. Meeting up at the Hub
2. Talking through where the project should go
3. Reading more about GLP-1s and Retatrutide specifically
4. Figuring out what insights are actually realistic given the data we have
5. Sketching out how we'll structure the code

## Division of Labor
Each of us will own:
- At least one table in the final report
- At least one plot (and we'll make sure we're not all making the same kind of plot)
- 5+ real commits on our own dev branch
- Reviewing at least one teammate's PR before it gets merged

We'll track who's doing what through GitHub Issues.

