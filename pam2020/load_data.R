library(dplyr)
# install.packages('dplyr', repos = 'https://cloud.r-project.org')

text2nps <- function(data) {
  return(recode(
    data,
    "0 Not at all likely to recommend" = 0,
    "1" = 1,
    "2" = 2,
    "3" = 3,
    "4" = 4,
    "5" = 5,
    "6" = 6,
    "7" = 7,
    "8" = 8,
    "9" = 9,
    "10 Extremely likely to recommend" = 10
  ))
}

# Likert scale levels
levelsOverallExperience <- c("extremely bad", "bad", "poor", "fair", "good", "excellent", "ideal")
levelsExpectation3Point <- c("More than expected", "As expected", "Less than expected")
levelsDifference <- c("much better", "somewhat better", "stayed the same", "somewhat worse", "much worse")
levelsFrequency <- c("Very Frequently", "Frequently", "Occasionally", "Rarely", "Very Rarely", "Never")
levelsUsefulness <- c("useful", "neutral", "distracting")
levelsAgreement <- c("Strongly Disagree", "Disagree", "Undecided", "Agree", "Strongly Agree")
levelsTools <- c("Better than expected", "As expected", "Worse than expected", "Did not use")
levelsImportance <- c("Not at all", "Slightly", "Moderate", "Very", "Extremely")

# Other levels
levelsNumPams <- c("1", "2", "3", "4-6", ">6")

###############################################################################
# Pre-conf questionnaire
###############################################################################

preconf <- read.csv("PAM-Pre_conference_questionnaire.csv", sep=",", quote='"')

colnames(preconf) <- c(
  "timestamp", # Submission time stamp
  
  # Genral demographics etc.
  "numPAMs", # "How many PAM conferences have you attended, including this one?"
  "timezone", # "In which timezone are you?"
  "location", # "From where are you participating in PAM?"
  "seniority", # "Please rate your professional seniority"
  "priorRemoteExperience", # "Have you attended a remote conference before?"
  "visitOregon", # Would you have attended PAM as on-site conference in Oregon?"
  
  # Intended participation
  "intendedUseSlackZoomForHallwayTrack", # Do you intend to use the conference Slack/Zoom as virtual hallway track?"
  "intendedSessionAttendance", # "In which sessions do you plan to participate?"
  "attendMoreSessionsIfOnsite", # Do you think you would attend more sessions if you would have attended PAM as on-site venue?"

    # Important aspects for on-site conference attendance
  "onsiteImportanceOfPresentingMyWork", # "Importance of presenting my work to this community"
  "onsiteImportanceOfPapers", # Importance of following paper/poster presentations
  "onsiteImportanceOfInteractingWithKnownResearchers", # Importance of interacting with other researchers I already know
  "onsiteImportanceOfMeetingNewResearchers", # Importance of meeting new researchers
  "onsiteImportanceOfLocation", # Importance of visiting the city/country in which the conference is held
  
  # Important aspects for virtual conference attendance
  "virtualconfImportanceOfPresentingMyWork", # "Importance of presenting my work to this community"
  "virtualconfImportanceOfPapers", # Importance of following paper/poster presentations
  "virtualconfImportanceOfInteractingWithKnownResearchers", # Importance of meeting new researchers
  "virtualconfImportanceOfMeetingNewResearchers", # Importance of meeting new researchers
  
  # General feedback
  "feedback" # Do you have other feedback / wishes / comments that you would like to share?"
  )

preconf$priorRemoteExperience <- recode(preconf$priorRemoteExperience,
       "No, this is my first remote conference" = "No")

preconf$seniority <- recode(preconf$seniority,
       "Government (research scientist)" = "government scientist",
       "Undergrad / Master student" = "Master student")

preconf$visitOregon <- recode(preconf$visitOregon,
                               "No, I am only attending because of the remote participation and would not have come to Oregon" = "No",
                               "Yes, I would have physically attended PAM in Oregon" = "Yes"
)

preconf$timezone <- recode(preconf$timezone,
       "(GMT -8:00) Pacific Time (US & Canada)" = "-8",
       "(GMT -5:00) Eastern Time (US & Canada), Bogota, Lima" = "-5",
       "(GMT -4:00) Atlantic Time (Canada), Caracas, La Paz" = "-4",
       "(GMT +1:00) Brussels, Copenhagen, Madrid, Paris" = "+1",
       "(GMT +3:00) Baghdad, Riyadh, Moscow, St. Petersburg" = "+3",
       "(GMT +8:00) Beijing, Perth, Singapore, Hong Kong" = "+8"
)

preconf$timezone <- factor(preconf$timezone, levels=c("-8", "-5", "-4", "+1", "+3", "+8"), ordered=TRUE)

preconf$numPAMs <- factor(preconf$numPAMs, levels=levelsNumPams, ordered=TRUE)

preconf$`onsiteImportanceOfInteractingWithKnownResearchers` <- factor(preconf$`onsiteImportanceOfInteractingWithKnownResearchers`, levels=levelsImportance, ordered=TRUE)
preconf$`onsiteImportanceOfLocation` <- factor(preconf$`onsiteImportanceOfLocation`, levels=levelsImportance, ordered=TRUE)
preconf$`onsiteImportanceOfMeetingNewResearchers` <- factor(preconf$`onsiteImportanceOfMeetingNewResearchers`, levels=levelsImportance, ordered=TRUE)
preconf$`onsiteImportanceOfPapers` <- factor(preconf$`onsiteImportanceOfPapers`, levels=levelsImportance, ordered=TRUE)
preconf$`onsiteImportanceOfPresentingMyWork` <- factor(preconf$`onsiteImportanceOfPresentingMyWork`, levels=levelsImportance, ordered=TRUE)

preconf$`virtualconfImportanceOfInteractingWithKnownResearchers` <- factor(preconf$`virtualconfImportanceOfInteractingWithKnownResearchers`, levels=levelsImportance, ordered=TRUE)
preconf$`virtualconfImportanceOfMeetingNewResearchers` <- factor(preconf$`virtualconfImportanceOfMeetingNewResearchers`, levels=levelsImportance, ordered=TRUE)
preconf$`virtualconfImportanceOfPapers` <- factor(preconf$`virtualconfImportanceOfPapers`, levels=levelsImportance, ordered=TRUE)
preconf$`virtualconfImportanceOfPresentingMyWork` <- factor(preconf$`virtualconfImportanceOfPresentingMyWork`, levels=levelsImportance, ordered=TRUE)


###############################################################################
# Post-conf questionnaire
###############################################################################

postconf <- read.csv("PAM-Post_conference_questionnaire.csv", sep=",", quote='"')

# ]","To speakers: My expectations on attending a virtual conference were met [To present my work]","Would you attend more conferences each year if they are offered online","What tools did you use to participate in the conference and how well did they work? [Zoom]","What tools did you use to participate in the conference and how well did they work? [Slack]","How do you rate the presentation sessions of this virtual conference compared to on-site conferences? [Ability to attend talks]","How do you rate the presentation sessions of this virtual conference compared to on-site conferences? [Ability to focus on the talks without distractions]","How do you rate the presentation sessions of this virtual conference compared to on-site conferences? [Ability to ask questions]","How do you rate the presentation sessions of this virtual conference compared to on-site conferences? [Ability to deeply discuss a topic openly with all participants]","Did you experience video or audio degradations in Zoom? [Audio impairments]","Did you experience video or audio degradations in Zoom? [Video impairments]","Which one of the following factors during the online presentations affected your interest or ability to follow the talk or remain engage [Having a video of the speaker in the corner of slides]","Which one of the following factors during the online presentations affected your interest or ability to follow the talk or remain engage [Presenter’s tone of speaking]","Which one of the following factors during the online presentations affected your interest or ability to follow the talk or remain engage [Changing of the audio across different segments of the presentation]","Pros/Cons of pre-recorded talks","(optional) Pros: What did you like about pre-recorded talks?","(optional) Cons: What did you not like about pre-recorded talks?","How many paper sessions did you skip due to time zone differences","Did you participate in technical discussions on Slack or Zoom?","How do you rate the interaction with others during this virtual conference compared to on-site conferences? [Ability to ask questions]","How do you rate the interaction with others during this virtual conference compared to on-site conferences? [Moderation of questions by the session chairs when posting to the Zoom chat]","How do you rate the interaction with others during this virtual conference compared to on-site conferences? [Ability for detailed technical discussions]","With how many participants did you interact in *private* chats? [Slack private chats]","With how many participants did you interact in *private* chats? [Zoom private chats]","(optional): Pros: Other feedback on *positive* aspects of the ability to interact during this virtual conference","(optional): Cons: Other feedback on *negative* aspects of the ability to interact during this virtual conference","Did you use Slack or the Zoom chat to interact with others about topics unrelated to the presentations?","How do you rate the quality of social interactions (unrelated to the presentations) during this virtual conference compared to classical on-site conferences? [Interactions with researchers I already know]","How do you rate the quality of social interactions (unrelated to the presentations) during this virtual conference compared to classical on-site conferences? [Interactions with new researchers I didn't know before]","(optional) What did you enjoy about social interaction at this virtual conference?","(optional) How can social interactions be improved at virtual conferences?","I would like to attend more virtual conferences in the future [I would like to attend more virtual conferences]","How many venues should be virtual in the future? [Future ideal share of virtual conferences]","How likely is it that you would recommend attending PAM as virtual conference to a colleague? [Would you recommend attending PAM remotely to a colleague?]","Pros: What worked well about attending remotely","Cons: What did not work well about attending remotely","Other comments / suggestions / feedback"

colnames(postconf) <- c(
  "timestamp", # Submission time stamp
  
  # Section 2 "Personal details"
  # Genral demographics etc.
  "numPAMs", # "How many PAM conferences have you attended, including this one?"
  "timezone", # "In which timezone are you?"
  "location", # "From where are you participating in PAM?"
  "seniority", # "Please rate your professional seniority"
  "priorRemoteExperience", # "Have you attended a remote conference before?"
  "visitOregon", # Would you have attended PAM as on-site conference in Oregon?"
  
  # Section 3: "Overall Experience"
  "overallExperience", # "My overall experience of attending remotely PAM is [Overall experience]"

  # "Compared to attending on-site, attending remotely allowed me to better focus on the conference" ...
  "focusOnContent", #  I was more focused on the technical content"  
  "focusOnInteractions", # I was more focused on social interactions
  
  # "My expectations on attending a virtual conference were met
  "expectationPresentWork", # To present my work
  "expectationFollowPresentations", # To follow presentations
  "expectationInteractWithSpeakers", # To interact with speakers
  "expectationInteractWithParticipants", # To interact with participants
  
  # To speakers: My expectations on attending a virtual conference were met
  "expectationSpeakersPresentWork", # To present my work
  
  "attendMoreConfsIfOnline", # Would you attend more conferences each year if they are offered online
  
  
  # Talk Sessions 
  
  # What tools did you use to participate in the conference and how well did they work?
  "zoom",
  "slack",
  
  # How do you rate the presentation sessions of this virtual conference compared to on-site conferences?
  "presentationsAttendTalks", # Ability to attend talks
  "presentationDistractions", # Ability to focus on the talks without distractions
  "askQuestions", # Ability to ask questions
  "discuss", # Ability to deeply discuss a topic openly with all participants
  
  # Did you experience video or audio degradations in Zoom?
  "audioImpairments",
  "videoImpairments",
  
  # Which one of the following factors during the online presentations affected your interest or ability to follow the talk or remain engage
  "speakerVideoOnSlides", # Having a video of the speaker in the corner of slides
  "speakersToneOfSpeaking", # Presenter’s tone of speaking
  "speakersAudioChange", # Changing of the audio across different segments of the presentation
  
  # Pros/Cons of pre-recorded talks
  "prosConsPreRecordedTaks",
  "textProsPreRecordedTalks", # (optional) Pros: What did you like about pre-recorded talks?
  "textConsPreRecordedTalks", # (optional) Cons: What did you not like about pre-recorded talks?
  
  "skippedSessions", # How many paper sessions did you skip due to time zone differences
  
  # Section 5: Presentation-related Interactions
  
  "participateSlackZoom", # Did you participate in technical discussions on Slack or Zoom?
  
  # How do you rate the interaction with others during this virtual conference compared to on-site conferences?
  "conferenceInteractionAskQuestions", # Ability to ask questions
  "conferenceInteractionModeration", # Moderation of questions by the session chairs when posting to the Zoom chat
  "conferenceInteractionDiscussion", # Ability for detailed technical discussions
  
  "numberOfParticipantsSlackPrivateChat", #
  "numberOfParticipantsZoomPrivateChat", #
  
  "textProsInteraction", # (optional): Pros: Other feedback on *positive* aspects of the ability to interact during this virtual conference
  "textConsInteraction", # (optional): Cons: Other feedback on *negative* aspects of the ability to interact during this virtual conference
  
  # Section 6: Social Interactions (Virtual Hallway Track)
  
  "useSlackZoom", # Did you use Slack or the Zoom chat to interact with others about topics unrelated to the presentations?  

  # How do you rate the quality of social interactions (unrelated to the presentations) during this virtual conference compared to classical on-site conferences?
  "hallwaytrackInteractionWithKnownResearchers", # Interactions with researchers I already know
  "hallwaytrackInteractionWithNewResearchers", # Interactions with new researchers I didn't know before
  
  "textProsHallway", # (optional) What did you enjoy about social interaction at this virtual conference?
  "textConsHallway", # (optional) How can social interactions be improved at virtual conferences?
  
  # Section 7 General comments about remote attendance
  
  "attendMoreVirtualConfsInFuture", # I would like to attend more virtual conferences in the future
  "shareFutureVirtualConfs", # How many venues should be virtual in the future?
  "nps", # How likely is it that you would recommend attending PAM as virtual conference to a colleague?
  "textPros", # Pros: What worked well about attending remotely
  "textCons", # Cons: What did not work well about attending remotely
  "textGeneralComments" # Other comments / suggestions / feedback
)

postconf$priorRemoteExperience <- recode(postconf$priorRemoteExperience,
       "No, this is my first virtual conference" = "No")

postconf$visitOregon <- recode(postconf$visitOregon,
       "No, I am only attending because of the remote participation and would not have come to Oregon" = "No",
       "Yes, I would have physically attended PAM in Oregon" = "Yes"
)
postconf$numPAMs <- factor(postconf$numPAMs, levels=levelsNumPams, ordered=TRUE)
postconf$overallExperience <- factor(postconf$overallExperience, levels=levelsOverallExperience, ordered=TRUE)
postconf$focusOnContent <- recode(postconf$focusOnContent, "Strongly Agree ( better focus, less distraction)" = "Strongly Agree", "Strongly Disagree (I got very distracted by other aspects)" = "Strongly Disagree")
postconf$focusOnContent <- factor(postconf$focusOnContent, levels=levelsAgreement, ordered=TRUE)
postconf$focusOnInteractions <- recode(postconf$focusOnInteractions, "Strongly Agree ( better focus, less distraction)" = "Strongly Agree", "Strongly Disagree (I got very distracted by other aspects)" = "Strongly Disagree")
postconf$focusOnInteractions <- factor(postconf$focusOnInteractions, levels=levelsAgreement, ordered=TRUE)

postconf$expectationPresentWork <- factor(postconf$expectationPresentWork, levels=levelsExpectation3Point, ordered=TRUE)
postconf$expectationFollowPresentations <- factor(postconf$expectationFollowPresentations, levels=levelsExpectation3Point, ordered=TRUE)
postconf$expectationInteractWithSpeakers <- factor(postconf$expectationInteractWithSpeakers, levels=levelsExpectation3Point, ordered=TRUE)
postconf$expectationInteractWithParticipants <- factor(postconf$expectationInteractWithParticipants, levels=levelsExpectation3Point, ordered=TRUE)
postconf$expectationSpeakersPresentWork <- factor(postconf$expectationSpeakersPresentWork, levels=levelsExpectation3Point, ordered=TRUE)

postconf$attendMoreConfsIfOnline <- factor(postconf$attendMoreConfsIfOnline, levels=c("Yes", "Maybe", "No"), ordered=TRUE)

postconf$zoom <- factor(postconf$zoom, levels=levelsTools, ordered=TRUE)
postconf$slack <- factor(postconf$slack, levels=levelsTools, ordered=TRUE)

postconf$presentationsAttendTalks <- factor(postconf$presentationsAttendTalks, levels=levelsDifference, ordered=TRUE)
postconf$presentationDistractions <- factor(postconf$presentationDistractions, levels=levelsDifference, ordered=TRUE)
postconf$askQuestions <- factor(postconf$askQuestions, levels=levelsDifference, ordered=TRUE)
postconf$discuss <- factor(postconf$discuss, levels=levelsDifference, ordered=TRUE)

postconf$audioImpairments <- factor(postconf$audioImpairments, levels=levelsFrequency, ordered=TRUE)
postconf$videoImpairments <- factor(postconf$videoImpairments, levels=levelsFrequency, ordered=TRUE)

postconf$speakersAudioChange <- factor(postconf$speakersAudioChange, levels=levelsUsefulness, ordered=TRUE)
postconf$speakersToneOfSpeaking <- factor(postconf$speakersToneOfSpeaking, levels=levelsUsefulness, ordered=TRUE)
postconf$speakerVideoOnSlides <- factor(postconf$speakerVideoOnSlides, levels=levelsUsefulness, ordered=TRUE)

postconf$prosConsPreRecordedTaks <- factor(postconf$prosConsPreRecordedTaks)
postconf$prosConsPreRecordedTaks <- recode_factor(postconf$prosConsPreRecordedTaks,
  "Significantly increased my interest/ability to follow the talk" = "Signficantly increased",
  "Increased my interest/ability to follow the talk" = "Increased",
  "Didn’t affect my interest/ability to follow the talk" = "Neutral",
  "Limited my interest/ability to follow the talk" = "Limited",
  "Significantly limited my interest/ability to follow the talk" = "Significantly Limited"
  )

postconf$skippedSessions <- recode(postconf$skippedSessions, "7 (I skipped all sessions)" = 7, "6" = 6, "5" = 5, "4" = 4, "3" = 3, "2" = 2, "1" = 1, "0 (I followed every session)" = 0)

postconf$conferenceInteractionAskQuestions <- factor(postconf$conferenceInteractionAskQuestions, levels=levelsDifference, ordered=TRUE)
postconf$conferenceInteractionModeration <- factor(postconf$conferenceInteractionModeration, levels=levelsDifference, ordered=TRUE)
postconf$conferenceInteractionDiscussion <- factor(postconf$conferenceInteractionDiscussion, levels=levelsDifference, ordered=TRUE)

postconf$skippedSessions <- factor(postconf$skippedSessions, ordered=TRUE)

postconf$participateSlackZoom <- recode(postconf$participateSlackZoom,
  "Actively (I posted content to Slack or Zoom)" = "Actively",
  "Passively (I read what others posted)" = "Passively",
  "Actively (I posted content to Slack or Zoom);Passively (I read what others posted)" = "Active+Passive",
  "Didn’t participate " = "Didn't"
)

# TODO
postconf$numberOfParticipantsSlackPrivateChat
postconf$numberOfParticipantsZoomPrivateChat

postconf$useSlackZoom <- factor(postconf$useSlackZoom, levels=c("Yes", "No"))

postconf$hallwaytrackInteractionWithKnownResearchers <- factor(tolower(postconf$hallwaytrackInteractionWithKnownResearchers), levels=levelsDifference, ordered=TRUE)
postconf$hallwaytrackInteractionWithNewResearchers <- factor(tolower(postconf$hallwaytrackInteractionWithNewResearchers), levels=levelsDifference, ordered=TRUE)

postconf$shareFutureVirtualConfs <- recode_factor(postconf$shareFutureVirtualConfs, "0% (all in-person, please)" = "0%", "100% (all virtual, please)" = "100%")
postconf$shareFutureVirtualConfs <- factor(postconf$shareFutureVirtualConfs, levels=c("0%", "10%", "20%", "30%", "40%", "50%", "60%", "70%", "80%", "90%", "100%"), ordered=TRUE)

postconf$nps = factor(text2nps(postconf$nps), ordered=TRUE)

postconf$timezone <- recode(postconf$timezone,
       "(GMT -8:00) Pacific Time (US & Canada)" = "-8",
       "(GMT -7:00) Mountain Time (US & Canada)" = "-7",
       "(GMT -5:00) Eastern Time (US & Canada), Bogota, Lima" = "-5",
       "(GMT) Western Europe Time, London, Lisbon, Casablanca" = "+0",
       "(GMT +1:00) Brussels, Copenhagen, Madrid, Paris" = "+1",
       "(GMT +8:00) Beijing, Perth, Singapore, Hong Kong" = "+8"
)
postconf$timezone <- factor(postconf$timezone, levels=c("-8", "-7", "-5", "+0", "+1", "+8"), ordered=TRUE)

###########################################################################
# Apply grouping
###########################################################################
postconfCleaned <- postconf
postconfCleaned$seniority <- recode_factor(postconfCleaned$seniority,
  "government scientist" = "Industry",
  "Postdoc" = "Faculty/Postdoc",
  "Faculty" = "Faculty/Postdoc",
  "PhD student" = "Student",
  "Master student" = "Student"
)
postconfCleaned$numPAMs <- recode_factor(postconfCleaned$numPAMs,
  "2" = ">1",
  "3" = ">1",
  "4-6" = ">1",
  ">6" = ">1"
)

preconfCleaned <- preconf
preconfCleaned$seniority <- recode_factor(preconfCleaned$seniority,
  "government scientist" = "Industry",
  "Postdoc" = "Faculty/Postdoc",
  "Faculty" = "Faculty/Postdoc",
  "PhD student" = "Student",
  "Master student" = "Student"
)
preconfCleaned$numPAMs <- recode_factor(preconfCleaned$numPAMs,
  "2" = ">1",
  "3" = ">1",
  "4-6" = ">1",
  ">6" = ">1"
)
