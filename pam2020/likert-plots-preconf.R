library(likert)

source("load_data.R")

preconf$`onsiteImportanceOfInteractingWithKnownResearchers` <- factor(preconf$`onsiteImportanceOfInteractingWithKnownResearchers`, levels=levelsImportance, ordered=TRUE)
preconf$`onsiteImportanceOfLocation` <- factor(preconf$`onsiteImportanceOfLocation`, levels=levelsImportance, ordered=TRUE)
preconf$`onsiteImportanceOfMeetingNewResearchers` <- factor(preconf$`onsiteImportanceOfMeetingNewResearchers`, levels=levelsImportance, ordered=TRUE)
preconf$`onsiteImportanceOfPapers` <- factor(preconf$`onsiteImportanceOfPapers`, levels=levelsImportance, ordered=TRUE)
preconf$`onsiteImportanceOfPresentingMyWork` <- factor(preconf$`onsiteImportanceOfPresentingMyWork`, levels=levelsImportance, ordered=TRUE)

preconf$`virtualconfImportanceOfInteractingWithKnownResearchers` <- factor(preconf$`virtualconfImportanceOfInteractingWithKnownResearchers`, levels=levelsImportance, ordered=TRUE)
preconf$`virtualconfImportanceOfMeetingNewResearchers` <- factor(preconf$`virtualconfImportanceOfMeetingNewResearchers`, levels=levelsImportance, ordered=TRUE)
preconf$`virtualconfImportanceOfPapers` <- factor(preconf$`virtualconfImportanceOfPapers`, levels=levelsImportance, ordered=TRUE)
preconf$`virtualconfImportanceOfPresentingMyWork` <- factor(preconf$`virtualconfImportanceOfPresentingMyWork`, levels=levelsImportance, ordered=TRUE)


preconfOnsiteImportance <- data.frame(
  onsiteImportanceOfPresentingMyWork = preconfCleaned$onsiteImportanceOfPresentingMyWork,
  onsiteImportanceOfPapers = preconfCleaned$onsiteImportanceOfPapers,
  onsiteImportanceOfInteractingWithKnownResearchers = preconfCleaned$`onsiteImportanceOfInteractingWithKnownResearchers`,
  onsiteImportanceOfMeetingNewResearchers = preconfCleaned$onsiteImportanceOfMeetingNewResearchers#,
  #onsiteImportanceOfLocation = preconfCleaned$onsiteImportanceOfLocation
)
names(preconfOnsiteImportance) <- c(
  "Importance of presenting my work to this community",
  "Importance of following paper/poster presentations",
  "Importance of interacting with other researchers I already know",
  "Importance of meeting new researchers"#,
  #"Importance of visiting the city/country in which the conference is held"
)
pdf("figures/preconf-onsite-seniority.pdf", width=8, height=4.5)
lpreconfOnsiteConfSeniorityG <- likert(preconfOnsiteImportance, grouping=preconfCleaned$seniority)
plot(lpreconfOnsiteConfSeniorityG, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()

pdf("figures/preconf-onsite-pams.pdf")
lpreconfOnsiteConfSeniorityG <- likert(preconfOnsiteImportance, grouping=preconfCleaned$numPAMs)
plot(lpreconfOnsiteConfSeniorityG, text.size=4, wrap=120,  panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()

pdf("figures/preconf-onsite-oregon.pdf")
lpreconfVirtualConfSeniorityG <- likert(preconfOnsiteImportance, grouping=preconfCleaned$visitOregon)
plot(lpreconfOnsiteConfSeniorityG, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()


# Important aspects for virtual conference attendance
preconfVirtconfImportance <- data.frame(
  virtualconfImportanceOfPresentingMyWork = preconfCleaned$virtualconfImportanceOfPresentingMyWork,
  virtualconfImportanceOfPapers = preconfCleaned$virtualconfImportanceOfPapers,
  virtualconfImportanceOfInteractingWithKnownResearchers = preconfCleaned$virtualconfImportanceOfInteractingWithKnownResearchers,
  virtualconfImportanceOfMeetingNewResearchers = preconfCleaned$virtualconfImportanceOfMeetingNewResearchers
)
names(preconfVirtconfImportance) <- c(
  "Importance of presenting my work to this community",
  "Importance of following paper/poster presentations",
  "Importance of interacting with other researchers I already know",
  "Importance of meeting new researchers"
)
pdf("figures/preconf-virtconf-seniority.pdf",  width=8, height=4.5)
lpreconfVirtualConfSeniorityG <- likert(preconfVirtconfImportance, grouping=preconfCleaned$seniority)
plot(lpreconfVirtualConfSeniorityG, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
#plot(lpreconfVirtualConfSeniorityG, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=20)) + theme(legend.position="bottom", legend.box = "horizontal")
dev.off()

pdf("figures/preconf-virtconf-pams.pdf")
lpreconfVirtualConfSeniorityG <- likert(preconfVirtconfImportance, grouping=preconfCleaned$numPAMs)
plot(lpreconfVirtualConfSeniorityG, text.size=4, wrap=120,  panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off()

pdf("figures/preconf-virtconf-oregon.pdf")
lpreconfVirtualConfSeniorityG <- likert(preconfVirtconfImportance, grouping=preconfCleaned$visitOregon)
plot(lpreconfVirtualConfSeniorityG, text.size=4, wrap=120, panel.strip.color="white") + theme(strip.text=element_text(size=13)) + theme(text = element_text(size=13))
dev.off() 
