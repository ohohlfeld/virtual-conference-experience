library(likert)

source("load_data.R")

plotWidth <- 8

refactor <- function(f, new_levels, ordered = NA) {
  if (is.na(ordered)) {
    ordered <- is.ordered(f)
  }
  
  new_f <- factor(f, levels = new_levels, exclude = NULL, ordered = ordered)
  attributes(new_f) <- utils::modifyList(attributes(f), attributes(new_f))
  new_f
}

lvls_seq <- function(f) {
  seq_along(levels(f))
}

lvls_reorder <- function(f, idx, ordered = NA) {
  #f <- check_factor(f)
  if (!is.numeric(idx)) {
    stop("`idx` must be numeric", call. = FALSE)
  }
  if (!setequal(idx, lvls_seq(f)) || length(idx) != nlevels(f)) {
    stop("`idx` must contain one integer for each level of `f`", call. = FALSE)
  }
  
  refactor(f, levels(f)[idx], ordered = ordered)
}

fct_rev <- function(f) {
  #f <- check_factor(f)
  
  lvls_reorder(f, rev(lvls_seq(f)))
}

# "Compared to attending on-site, attending remotely allowed me to better focus on the conference" ...
# "focusOnContent", #  I was more focused on the technical content"  
# "focusOnInteractions", # I was more focused on social interactions
postConfFocus <- data.frame(
  focusOnContent = postconfCleaned$focusOnContent,
  focusOnInteractions = postconfCleaned$focusOnInteractions
)
names(postConfFocus) <- c(
  "I was more focused on the technical content",
  "I was more focused on social interactions"
)

pdf("figures/postconf-focus-seniority.pdf", width=plotWidth, height=3)
lpostconfFocusG <- likert(postConfFocus, grouping=postconfCleaned$seniority)
plot(lpostconfFocusG, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()

pdf("figures/postconf-focus-numpams.pdf", width=plotWidth, height=3)
lpostconfFocusG <- likert(postConfFocus, grouping=postconfCleaned$numPAMs)
plot(lpostconfFocusG, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()

# "My expectations on attending a virtual conference were met
#"expectationPresentWork", # To present my work
#"expectationFollowPresentations", # To follow presentations
#"expectationInteractWithSpeakers", # To interact with speakers
#"expectationInteractWithParticipants", # To interact with participants
postConfExpectations <- data.frame(  
  expectationPresentWork = fct_rev(postconfCleaned$expectationPresentWork),
  expectationFollowPresentations = fct_rev(postconfCleaned$expectationFollowPresentations),
  expectationInteractWithSpeakers = fct_rev(postconfCleaned$expectationInteractWithSpeakers),
  expectationInteractWithParticipants = fct_rev(postconfCleaned$expectationInteractWithParticipants)
  #expectationSpeakersPresentWork = postconfCleaned$expectationSpeakersPresentWork
)
names(postConfExpectations) <- c(
  "To present my work",
  "To follow presentations",
  "To interact with speakers",
  "To interact with participants"
)

pdf("figures/postconf-expecations-seniority.pdf", width=plotWidth, height=4)
lpostexpectationsG <- likert(postConfExpectations, grouping=postconfCleaned$seniority)
plot(lpostexpectationsG, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()

pdf("figures/postconf-expecations-numpams.pdf", width=plotWidth, height=4)
lpostexpectationsG <- likert(postConfExpectations, grouping=postconfCleaned$numPAMs)
plot(lpostexpectationsG, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()

# How do you rate the presentation sessions of this virtual conference compared to on-site conferences?
#"presentationsAttendTalks", # Ability to attend talks
#"presentationDistractions", # Ability to focus on the talks without distractions
#"askQuestions", # Ability to ask questions
#"discuss", # Ability to deeply discuss a topic openly with all participants
postConfVirtConfRating <- data.frame(
  presentationsAttendTalks = fct_rev(postconfCleaned$presentationsAttendTalks),
  presentationDistractions = fct_rev(postconfCleaned$presentationDistractions),
#  askQuestions = fct_rev(postconfCleaned$askQuestions),
  discuss = fct_rev(postconfCleaned$discuss)
)
names(postConfVirtConfRating) <- c(
  "Ability to attend talks",
  "Ability to focus on the talks without distractions",
#  "Ability to ask questions",
  "Ability to deeply discuss a topic openly with all participants"
)

pdf("figures/postconf-talksAbility-seniority.pdf", width=plotWidth, height=3.5)
lposttalksAbilityG <- likert(postConfVirtConfRating, grouping=postconfCleaned$seniority)
plot(lposttalksAbilityG, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()

pdf("figures/postconf-talksAbility-numpams.pdf", width=plotWidth, height=3.5)
lposttalksAbilityG <- likert(postConfVirtConfRating, grouping=postconfCleaned$numPAMs)
plot(lposttalksAbilityG, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()

experience <- data_frame(experience = postconf$overallExperience)
names(experience) = ""
pdf("figures/postconf-overallexperience-seniority.pdf", width=plotWidth, height=2.3)
plot(likert(experience, grouping=postconfCleaned$seniority), title="", text.size=4, wrap=40, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()
pdf("figures/postconf-overallexperience-numpams.pdf", width=plotWidth, height=2.3)
plot(likert(experience, grouping=postconfCleaned$numPAMs), title="", text.size=4, wrap=40, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()

# Which one of the following factors during the online presentations affected your interest or ability to follow the talk or remain engage
#"speakerVideoOnSlides", # Having a video of the speaker in the corner of slides
#"speakersToneOfSpeaking", # Presenter’s tone of speaking
#"speakersAudioChange", # Changing of the audio across different segments of the presentation
recordedTalkFeatures <- data.frame(
  speakerVideoOnSlides = fct_rev(postconfCleaned$speakerVideoOnSlides),
  speakersToneOfSpeaking = fct_rev(postconfCleaned$speakersToneOfSpeaking),
  speakersAudioChange = fct_rev(postconfCleaned$speakersAudioChange)
)
names(recordedTalkFeatures) <- c(
  "Presenters' video", #"Having a video of the speaker in the corner of slides",
  "Tone of speaking",
  "Audio changes" # "Changing of the audio across different segments of the presentation"
)

pdf("figures/postconf-recordedtalks.pdf", width=plotWidth, height=1.9)
lrecordedtalksG <- likert(recordedTalkFeatures)
plot(lrecordedtalksG, text.size=4, wrap=40, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()

pdf("figures/postconf-recordedtalks-seniority.pdf", width=plotWidth, height=3)
lrecordedtalksG <- likert(recordedTalkFeatures, grouping=postconfCleaned$seniority)
plot(lrecordedtalksG, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()

pdf("figures/postconf-recordedtalks-numpams.pdf", width=plotWidth, height=3)
lrecordedtalksG <- likert(recordedTalkFeatures, grouping=postconfCleaned$numPAMs)
plot(lrecordedtalksG, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()

# How do you rate the interaction with others during this virtual conference compared to on-site conferences?
# "conferenceInteractionAskQuestions", # Ability to ask questions
# "conferenceInteractionModeration", # Moderation of questions by the session chairs when posting to the Zoom chat
# "conferenceInteractionDiscussion", # Ability for detailed technical discussions

postConfTalkInteraction <- data.frame(
  conferenceInteractionAskQuestions = fct_rev(postconfCleaned$conferenceInteractionAskQuestions),
  conferenceInteractionModeration = fct_rev(postconfCleaned$conferenceInteractionModeration),
  conferenceInteractionDiscussion = fct_rev(postconfCleaned$conferenceInteractionDiscussion)
)
names(postConfTalkInteraction) <- c(
  "Ability to ask questions",
  "Moderation of questions by the session chairs when posting to the Zoom chat",
  "Ability for detailed technical discussions"
)

pdf("figures/postconf-talkinteractions-seniority.pdf", width=plotWidth, height=3.5)
ltalkInteractionsG <- likert(postConfTalkInteraction, grouping=postconfCleaned$seniority)
plot(ltalkInteractionsG, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()

pdf("figures/postconf-talkinteractions-numpams.pdf", width=plotWidth, height=3.5)
ltalkInteractionsG <- likert(postConfTalkInteraction, grouping=postconfCleaned$numPAMs)
plot(ltalkInteractionsG, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()

# How do you rate the quality of social interactions (unrelated to the presentations) during this virtual conference compared to classical on-site conferences?
#"hallwaytrackInteractionWithKnownResearchers", # Interactions with researchers I already know
#"hallwaytrackInteractionWithNewResearchers", # Interactions with new researchers I didn't know before
postConfHallwayInteractions <- data.frame(
  hallwaytrackInteractionWithKnownResearchers = fct_rev(postconfCleaned$hallwaytrackInteractionWithKnownResearchers),
  hallwaytrackInteractionWithNewResearchers = fct_rev(postconfCleaned$hallwaytrackInteractionWithNewResearchers)
)
names(postConfHallwayInteractions) <- c(
  "Interactions with researchers I already know",
  "Interactions with new researchers I didn't know before"
)

pdf("figures/postconf-hallway-seniority.pdf", width=plotWidth, height=3)
lhallwayG <- likert(postConfHallwayInteractions, grouping=postconfCleaned$seniority)
plot(lhallwayG, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()

pdf("figures/postconf-hallway-numpams.pdf", width=plotWidth, height=3)
lhallwayG <- likert(postConfHallwayInteractions, grouping=postconfCleaned$numPAMs)
plot(lhallwayG, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()

# Section 7 General comments about remote attendance

#"attendMoreVirtualConfsInFuture", # I would like to attend more virtual conferences in the future
attendMoreVirtualConfsInFuture <- factor(postconfCleaned$attendMoreVirtualConfsInFuture, ordered=TRUE, levels = c("Strongly Disagree", "Disagree", "Undecided", "Agree", "Strongly Agree"))
attendMoreVirtualConfsInFuture <- data.frame(attendMoreVirtualConfsInFuture = attendMoreVirtualConfsInFuture)
names(attendMoreVirtualConfsInFuture) <- c("")
pdf("figures/postconf-futureconfs-overallexperience.pdf", width=plotWidth, height=2.2)
lfutureconfsG <- likert(attendMoreVirtualConfsInFuture, grouping=recode(postconfCleaned$overallExperience, "fair" = "poor/fair", "poor" = "poor/fair"))
plot(lfutureconfsG,  title = NULL, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()

#"shareFutureVirtualConfs", # How many venues should be virtual in the future?
#"nps", # How likely is it that you would recommend attending PAM as virtual conference to a colleague?
nps <- data.frame(nps = postconf$nps)
names(nps) <- c("")
pdf("figures/postconf-nps-overallexperience.pdf", width=plotWidth, height=2.5)
lnpsG <- likert(nps, grouping=recode(postconfCleaned$overallExperience, "fair" = "poor/fair", "poor" = "poor/fair"))
plot(lnpsG,  title = NULL, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()
