# A Questionnaire to Assess Virtual Conference Participation Experience

## Motivation
The outbreak of the COVID-19 pandemic in 2020 and ensuing travel restrictions and social distancing rules forced academic conferences around the globe to move to an online format with only little preparation time and prior experience.

While the organization of on-site conferences and meetings follows established practices, moving academic conferences entirely to an online format is new and thus little to no prior experience exists.
While different design guidelines for organizing virtual conferences emerged, a key challenge is that the participant experience is not yet fully understood. 
Do virtual conferences provide value beyond on-site conferences and might be there to stay?
Do participants enjoy participating in virtual conferences and what is needed to foster engagement in a virtual conference setting?
Which aspects of current virtual conference designs do not yet work well?

## Approach
To shed light on these questions, we present a new survey approach to assess the participants experience of attending virtual conferences.
It enables a data-driven investigation of participant's expectations, goals, attitudes, actual experiences and general feedback about virtual conferences.
Optionally, it can assess virtual conference attendance relative to prior experience in attending on-site conferences - assuming that such experience exists (assessed as part of the questionnaire).
This way, potential limitations, opportunities, and challenges of virtual conferences can be understood both from a more general perspective and in the light of the concrete virtual conference set-up.
Lessons learned by surveying participants enable to improve the design of future virtual conferences.

In the absence of established questionnaires to assess the participants experience of virtual conferences and to compare it to on-site versions, we designed the questionnaire in a first version early March 2020 and have successfully applied it at three conferences and two workshops.
These applications have highlighted the usefulness of the presented survey approach and the obtained feedback enabled its gradual improvement, up to this version that we find useful to publicly share and motivate its adoption.

## Obtaining the Questionnaire

To ease the adoption of our survey approach, we provide a HTML implementation based on [TheFragebogen](https://thefragebogen.de/). This HTML version can easily copied to other survey frameworks, e.g., Google Forms (which we have also used to run the questionnaires, see below).

HTML versions for preview:
* [Pre-conference questionnaire](https://ohohlfeld.github.io/virtual-conference-experience/pre-conference.html)
* [Post-conference questionnaire](https://ohohlfeld.github.io/virtual-conference-experience/post-conference.html)

The sources are available [here](questionnaires/).

## Data and Analysis Scripts

Our survey approach has already shown to be a useful tool to shed light on virtual conference participants' experiences of five venues we used it so far. One of the first conferences that moved to an online format was [PAM 2020](https://ccronline.sigcomm.org/wp-content/uploads/2020/08/sigcomm-ccr-final432.pdf). As an example of how to analyze data obtained with our survey approach, we provide the entire dataset and the scripts to analyze the participants experience of PAM 2020. The data is avilable [here](pam2020/).

Note that we used an *older version* of our survey approach for PAM 2020, implemented in Google Forms:
* [PAM 2020 Pre-conference questionnaire](https://github.com/ohohlfeld/virtual-conference-experience/blob/master/pam2020/PAM-Pre_conference_questionnaire.pdf)
* [PAM 2020 Post-conference questionnaire](https://github.com/ohohlfeld/virtual-conference-experience/blob/master/pam2020/PAM-Post_conference_questionnaire.pdf)

## Design Document

We describe the design of our approach in this [paper](questionnaires/techreport/).