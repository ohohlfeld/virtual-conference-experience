# PAM 2020 Virtual Conference Participant Experience Research

The outbreak of the COVID-19 pandemic required academic conference to move to an online format. [PAM 2020](https://pam2020.cs.uoregon.edu/) was the first academic conference on networking entirely organized as a virtual meeting in March 2020. The 2020 edition of the Passive and Active Measurement (PAM) conference was planned to be held at the University of Oregon campus in Eugene, Oregon, U.S., on March 30 and 31 of 2020. After careful consideration and in discussion with the steering committee and the program chairs, on March 5th, the PAM general chairs notified the community that the conference would be organized as a virtual meeting, with attendees participating only remotely. Ramakrishnan Durairajan and Reza Rejaie served as general chairs, whereas Anna Sperotto and Alberto Dainotti served as program chairs. Oliver Hohlfeld and Dennis Guse led the effort of carrying out a survey among participants.

Organizing [PAM 2020](https://pam2020.cs.uoregon.edu/) as a virtual conference provided an opportunity to assess the impact of different aspects of a virtual event on its participants. To this end, we employed a questionnaire-based approach to collect information from PAM participants.

This repository contains the results of the [PAM 2020]() virtual participant experience questionnaire along with the `R` scripts that we used to report its results in a companion paper that appeared in CCR 2020.

## Pre- and Post-Conference Questionnaires

We designed and administered two online questionnaires—one before and one after the conference—to PAM participants.

* The pre-conference questionnaire focused on planned attendance at PAM 2020 and the expectations of participants by gathering data on the following topics: i) Participant information (time zone, seniority, number of previously-attended PAM (on-site) conferences), ii) Planned participation, iii) Technical and social goals for attending prior on-site editions of the PAM conference. iv) Goals for attending this virtual PAM conference.
* The post-conference questionnaire assesses the participants' experience of attending the conference by collecting the following data: i) Participant information (same as pre-conference questionnaire). ii) Experience of attending presentation sessions. iii) Presentation-related interactions. iv) So- cial interactions (Virtual Hallway Track). v) Overall experience and fulfilment of expectations. vi) General comments about virtual attendance and suggestions for future virtual conferences.

The used questionnaires are available in `PAM-Pre_conference_questionnaire.pdf` and `PAM-Post_conference_questionnaire.pdf`.

## Data Sets

The raw results of both questionnaires are available as `PAM-Pre_conference_questionnaire.csv` and `PAM-Post_conference_questionnaire.csv`. Both files are comma separated values (CSV).

## Data Analysis

The repository contains `R` scripts to load and visualize the results data. In this regard, `load_data.R` will load both CSV files and preprocess the data (e.g., assigning proper variable names, use the correct levels for the factor variables, normalzing the input data, etc.). The file should be loaded before any other processing on the data is done.

### Reproducing Figures of the CCR Paper

Beyond, the paper contains two scripts to generate the Likert-scale plots in our CCR paper:

* `likert-plots-preconf.R` for the pre-conference questionnaire
* `likert-plots-postconf.R`for the post-conference questionnaire

All scripts can be executed with `Rscript`, e.g., `Rscript likert-plots-postconf.R` or by using the supplied Makefile by running `make`.

### Notebooks

The `notebooks` folder contains `R knitr` notebooks (`*.Rmd`) that we used for data analysis. They provide a good overview of the data and various subgroupings. On overview is provided by [pam.md](notebooks/pam.md). Run `make` to build the noteboooks, which requires you to have installed the `R knitr` package as well as `ggplot2`.

## Atribution

We publish our data sets to encourage research on virtual conference experience. If you make use of this data, follow academic principles and acknowledge using this data by linking to this repository.

Furthermore, if you use this data for research that is published in a scientific paper, poster or other peer reviewed content, you must cite the following paper as describing the original data collection:

## License

These datasets are subject to the Creative Commons CC BY-SA 4.0 license. This license entitles you to: 1) Share — copy and redistribute the material in any medium or format. 2) Adapt — remix, transform, and build upon the material for any purpose, even commercially. 

https://creativecommons.org/licenses/by-sa/4.0/

Any redistribution of (parts of) this data MUST include an unmodified copy of this document in full.
