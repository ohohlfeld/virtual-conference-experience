PAM 2020: Responses by users who attended PAM more than once
================

This document contains results to the PAM 2020 questionnaires.

# Pre-Conf Questionnaire

Number of responses:

    ## [1] 10

## Personal Details

How many PAM conferences have you attended, including this one?
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

In which timezone are you?

    preconf$timezone <- recode(preconf$timezone,
           "(GMT -8:00) Pacific Time (US & Canada)" = "-8",
           "(GMT -5:00) Eastern Time (US & Canada), Bogota, Lima" = "-5",
           "(GMT -4:00) Atlantic Time (Canada), Caracas, La Paz" = "-4",
           "(GMT +1:00) Brussels, Copenhagen, Madrid, Paris" = "+1",
           "(GMT +3:00) Baghdad, Riyadh, Moscow, St. Petersburg" = "+3",
           "(GMT +8:00) Beijing, Perth, Singapore, Hong Kong" = "+8"
    )

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

From where are you participating in PAM?
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-6-1.png)<!-- -->

Please rate your professional seniority
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

Have you attended a remote conference before?
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-8-1.png)<!-- -->

Would you have attended PAM as on-site conference in Oregon?
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-9-1.png)<!-- -->

## Planned participation

Do you intend to use the conference Slack/Zoom as virtual hallway track?
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-10-1.png)<!-- -->

In which sessions do you plan to participate?
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-11-1.png)<!-- -->

Do you think you would attend more sessions if you would have attended
PAM as on-site venue?
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-12-1.png)<!-- -->

## Your goals when attending a on-site conference (e.g., prior editions of PAM)

To begin with, please tell us about your goals when attending an
*on-site conference in person* (such as PAM in the previous years). We
will ask you to your goals when attending PAM as online conference in
the next section.

Importance of presenting my work to this community
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-13-1.png)<!-- -->

Importance of following paper/poster presentations
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-14-1.png)<!-- -->

Importance of interacting with other researchers I already know
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-15-1.png)<!-- -->

Importance of meeting new researchers
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-16-1.png)<!-- -->

Importance of visiting the city/country in which the conference is held
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-17-1.png)<!-- -->

## Your goals when attending PAM as virtual conference

Importance of presenting my work to this community
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

Importance of following paper/poster presentations
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-19-1.png)<!-- -->

Importance of interacting with other researchers I already know
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

Importance of meeting new researchers
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-21-1.png)<!-- -->

## Other comments (optional)

Do you have other feedback / wishes / comments that you would like to
share?

``` r
preconf$feedback
```

    ##  [1]                                                     
    ##  [2] Alas there's no adjustments for European time zones 
    ##  [3]                                                     
    ##  [4] Good luck - and thanks for all the effort!          
    ##  [5]                                                     
    ##  [6]                                                     
    ##  [7]                                                     
    ##  [8]                                                     
    ##  [9]                                                     
    ## [10]                                                     
    ## 8 Levels:  ... The time difference makes attending the conference very hard, and limits my participation to the few sessions during which I can stay awake.

# Post-Conf Questionnaire

Number of responses:

    ## [1] 12

## Personal details

We first would like to learn few personal details about you to be able
to better interpret your answers in this questionnaire.

Note that these questions are the same as in the pre-conference
questionnaire since we cannot correlate both questionnaires due to
anonymity.

How many PAM conferences have you attended, including this one?
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

In which timezone are you?

    postconf$timezone <- recode(postconf$timezone,
           "(GMT -8:00) Pacific Time (US & Canada)" = "-8",
           "(GMT -7:00) Mountain Time (US & Canada)" = "-7",
           "(GMT -5:00) Eastern Time (US & Canada), Bogota, Lima" = "-5",
           "(GMT) Western Europe Time, London, Lisbon, Casablanca" = "+0",
           "(GMT +1:00) Brussels, Copenhagen, Madrid, Paris" = "+1",
           "(GMT +8:00) Beijing, Perth, Singapore, Hong Kong" = "+8"
    )

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-25-1.png)<!-- -->

From where are you participating in PAM?
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

Please rate your professional seniority
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-27-1.png)<!-- -->

Have you attended a remote conference before?
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

Would you have attended PAM as on-site conference in Oregon?
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

## Overall Experience

This block is about assessing your overall experience of attending PAM
as virtual conference. Did you enjoy it?

### Overall Experience

My overall experience of attending remotely PAM is
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-30-1.png)<!-- -->

### Compared to attending on-site, attending remotely allowed me to better focus on the conference

I was more focused on the *technical content*
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-31-1.png)<!-- -->

I was more focused on *social interactions*
![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

### My expectations on attending a virtual conference were met

To present my
work

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

To follow
presentations

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

To interact with
speakers

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

To interact with
participants

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

### (optional) To speakers: My expectations on attending a virtual conference were met

This is a bug: the question was asked twice (mandatory above),
optionally here.

To present my
work

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### Would you attend more conferences each year if they are offered online

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

## Talk Sessions

In this section, we are interested how you experienced the talks
sessions (i.e., paper and poster
presentations).

### What tools did you use to participate in the conference and how well did they work?

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-39-1.png)<!-- -->

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### How do you rate the presentation sessions of this virtual conference compared to on-site conferences?

Ability to attend
talks

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-41-1.png)<!-- -->

Ability to focus on the talks without
distractions

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-42-1.png)<!-- -->

Ability to ask
questions

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-43-1.png)<!-- -->

Ability to deeply discuss a topic openly with all
participants

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-44-1.png)<!-- -->

### Did you experience video or audio degradations in Zoom?

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

### Which one of the following factors during the online presentations affected your interest or ability to follow the talk or remain engage

Having a video of the speaker in the corner of
slides

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->

Presenter’s tone of
speaking

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

Changing of the audio across different segments of the
presentation

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-49-1.png)<!-- -->

### Pros/Cons of pre-recorded talks

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### (optional) Pros: What did you like about pre-recorded talks?

    ##  [1] I think it made the talk experience more uniform overall -- even with the variations in audio quality in tone, it was less than you'd usually find in a live, in-person presentation.                                                                                                                                                                                                                                      
    ##  [2]                                                                                                                                                                                                                                                                                                                                                                                                                            
    ##  [3] All speakers did very good job of pacing themselves and sticking to time limit                                                                                                                                                                                                                                                                                                                                             
    ##  [4]                                                                                                                                                                                                                                                                                                                                                                                                                            
    ##  [5]                                                                                                                                                                                                                                                                                                                                                                                                                            
    ##  [6] there was little presentational quality loss due to nervousness!                                                                                                                                                                                                                                                                                                                                                           
    ##  [7] Well done and all talks were very well timed.                                                                                                                                                                                                                                                                                                                                                                              
    ##  [8]                                                                                                                                                                                                                                                                                                                                                                                                                            
    ##  [9] helped weak speakers a bit                                                                                                                                                                                                                                                                                                                                                                                                 
    ## [10] They were well-prepared and timed.                                                                                                                                                                                                                                                                                                                                                                                         
    ## [11] All authors made sure to give as much as details in their presentations; we can access the videos and go through the talks again when their are made available; It participated to the fact that we did not had any author loosing their connection during the talk; Since the presentation was already pre-recorded, authors can just came in to answer questions and focus on networking or learning about other's work. 
    ## [12]                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## 15 Levels:  ...

### (optional) Cons: What did you not like about pre-recorded talks?

    ##  [1]                                                                                                                                                                                     
    ##  [2]                                                                                                                                                                                     
    ##  [3] It was helpful if there was a speaker in the corner. I didn't like the talks that only had slides.                                                                                  
    ##  [4] didn't like those that used computerized speech                                                                                                                                     
    ##  [5]                                                                                                                                                                                     
    ##  [6] The quality of the recorded audio varied a lot. Sometimes it was harder/more energy demanding to listen to the prerecorded talk than it might have been during an in-person meeting.
    ##  [7] Most of the pre-recorded talks were well done. Some, however, experienced bad audio quality (probably from using built-in Laptop mic instead of external headset).                  
    ##  [8]                                                                                                                                                                                     
    ##  [9] that one robotic one was horrifying                                                                                                                                                 
    ## [10]                                                                                                                                                                                     
    ## [11] The amount of time and work it requires for authors to prepare them.                                                                                                                
    ## [12]                                                                                                                                                                                     
    ## 14 Levels:  ...

### How many paper sessions did you skip due to time zone differences

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-53-1.png)<!-- -->

## Presentation-related Interactions

This section is about how you interacted with other participants about
the content presented at the conference in terms of papers and
posters.

### Did you participate in technical discussions on Slack or Zoom?

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-54-1.png)<!-- -->

### How do you rate the interaction with others during this virtual conference compared to on-site conferences?

Ability to ask
questions

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-55-1.png)<!-- -->

Moderation of questions by the session chairs when posting to the Zoom
chat

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-56-1.png)<!-- -->

Ability for detailed technical
discussions

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-57-1.png)<!-- -->

### With how many participants did you interact in *private* chats?

Slack private
chats

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-58-1.png)<!-- -->

Zoom private
chats

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

### (optional): Pros: Other feedback on *positive* aspects of the ability to interact during this virtual conference

    ##  [1] I think the interactions were much easier -- digital communication is often significantly easier (which comes with its own challenges, especially concerning inadvertent tone, etc.), so I think it made it easier for a wider set to ask questions, and also created a slightly less stressful opportunity for authors to respond (especially compared to standing on a stage).
    ##  [2]                                                                                                                                                                                                                                                                                                                                                                                 
    ##  [3] It worked better than I expected. I was very impressed.                                                                                                                                                                                                                                                                                                                         
    ##  [4]                                                                                                                                                                                                                                                                                                                                                                                 
    ##  [5]                                                                                                                                                                                                                                                                                                                                                                                 
    ##  [6] slack facilitates getting into contact.                                                                                                                                                                                                                                                                                                                                         
    ##  [7]                                                                                                                                                                                                                                                                                                                                                                                 
    ##  [8]                                                                                                                                                                                                                                                                                                                                                                                 
    ##  [9] i am used to zoom and slack, so those were easy                                                                                                                                                                                                                                                                                                                                 
    ## [10] Didn't have "stage fright" when asking questions                                                                                                                                                                                                                                                                                                                                
    ## [11] Attending the virtual conference allowed us to continue our main routine/be working/having calls in between or post-sessions. I also followed the talks better and if we could have the videos to go through them at will later, that would be even better.                                                                                                                     
    ## [12]                                                                                                                                                                                                                                                                                                                                                                                 
    ## 8 Levels:  ...

### (optional): Cons: Other feedback on *negative* aspects of the ability to interact during this virtual conference

    ##  [1] I think this may have scaling challenges beyond a setting like PAM. While it worked great here, if there were more questions, the "ask directly in zoom" method may have become untenable.                                                                                                                                                                                           
    ##  [2]                                                                                                                                                                                                                                                                                                                                                                                      
    ##  [3]                                                                                                                                                                                                                                                                                                                                                                                      
    ##  [4]                                                                                                                                                                                                                                                                                                                                                                                      
    ##  [5]                                                                                                                                                                                                                                                                                                                                                                                      
    ##  [6] The conversation partner always knows that there is some agenda. There is limited room for "random discussions in the lunch queue". However, it's hard to emulate those during an online discussion.                                                                                                                                                                                 
    ##  [7]                                                                                                                                                                                                                                                                                                                                                                                      
    ##  [8]                                                                                                                                                                                                                                                                                                                                                                                      
    ##  [9] the hallway!!!!!  :(                                                                                                                                                                                                                                                                                                                                                                 
    ## [10] I didn't have the chance to interact with many participants, maybe private chats were very active but public chats weren't as active as I expected with exceptions on a few papers                                                                                                                                                                                                   
    ## [11] There is like a virtual barrier when you never met someone and you need to ask questions or discuss for the first time. That barrier was removed by interacting, meeting in person, and the attending the events organised at the unperson conference. That factor (getting to know each other better and have deeper conversations) is what we missed during the virtual conference.
    ## [12]                                                                                                                                                                                                                                                                                                                                                                                      
    ## 11 Levels:  ...

## Social Interactions (Virtual Hallway Track)

Besides content related to technical presentations (papers / posters),
conferences are about general interactions with known and new
researchers (e.g., during breaks or at the dinner table): the hallway
track. We are interested in this section how you experienced the hallway
track at
PAM.

### Did you use Slack or the Zoom chat to interact with others about topics unrelated to the presentations?

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-62-1.png)<!-- -->

### How do you rate the quality of social interactions (unrelated to the presentations) during this virtual conference compared to classical on-site conferences?

Interactions with researchers I already
know

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->

Interactions with new researchers I didn’t know
before

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-64-1.png)<!-- -->

### (optional) What did you enjoy about social interaction at this virtual conference?

    ##  [1] It made some interactions easier: no need to wait for another researcher to not be busy to catch them in a hallway -- you can simply message them asynchronously. 
    ##  [2]                                                                                                                                                                   
    ##  [3]                                                                                                                                                                   
    ##  [4]                                                                                                                                                                   
    ##  [5] Useless                                                                                                                                                           
    ##  [6]                                                                                                                                                                   
    ##  [7]                                                                                                                                                                   
    ##  [8]                                                                                                                                                                   
    ##  [9] not much                                                                                                                                                          
    ## [10] Language is not a barrier because it's easier to understand written language, no problem with understanding accents.                                              
    ## [11] There was not really social interaction from my perspective compared to other conferences I've been to.                                                           
    ## [12]                                                                                                                                                                   
    ## 8 Levels:  ... not much

### (optional) How can social interactions be improved at virtual conferences?

    ##  [1] Facilitating some small-group voice communication might be interesting. As an industry participant, there are a number of operational insights I would generally like to share with other researchers that are complicated to do in written virtual settings. This could be mitigated with smaller group audio chats as part of the event (other suddenly-virtual conferences have had some luck with BoF sessions and things of that nature).
    ##  [2]                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ##  [3]                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ##  [4]                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ##  [5]                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ##  [6]                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ##  [7] Due to the virtual nature there was less social interaction.                                                                                                                                                                                                                                                                                                                                                                                  
    ##  [8]                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ##  [9] i am not seeing any virtualized meetings being successful at this.  and that is bad.                                                                                                                                                                                                                                                                                                                                                          
    ## [10] More public discussions outside the Q&As after the paper. Maybe arrange discussion sessions where participants join a zoom session just for open discussion.                                                                                                                                                                                                                                                                                  
    ## [11] We could also organize a virtual dinner, with the possibility to have breakout zoom rooms where a couple of people could discuss about topics of interests or future collaborations.                                                                                                                                                                                                                                                          
    ## [12]                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## 7 Levels:  ... i am not seeing any virtualized meetings being successful at this.  and that is bad.

## General comments about remote attendance

### I would like to attend more virtual conferences in the future

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-67-1.png)<!-- -->

### How many venues should be virtual in the future?

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-68-1.png)<!-- -->

### Net Promotor Score: How likely is it that you would recommend attending PAM as virtual conference to a colleague?

0 Not at all likely to recommend - 10 Extremely likely to
recommend

![](pam_many_pams_attended_files/figure-gfm/unnamed-chunk-69-1.png)<!-- -->

### Pros: What worked well about attending remotely

    ##  [1] Easy to tune in  -- especially as it matched my timezone.                                                                                                                                     
    ##  [2] The presentations                                                                                                                                                                             
    ##  [3] I was able to attend on my own schedule from home. Sound and video were good, as well as  interactions with speakers.                                                                         
    ##  [4] easier to attend                                                                                                                                                                              
    ##  [5] Technically everything was fine                                                                                                                                                               
    ##  [6] no travel cost (as in time and money)                                                                                                                                                         
    ##  [7] The video conferencing system worked quite well.                                                                                                                                              
    ##  [8] Easy to fit to my schedule                                                                                                                                                                    
    ##  [9] that we could do it at all                                                                                                                                                                    
    ## [10] Avoiding traveling is a big plus for many reasons (family, financial, practical). Ability to focus on presentations and interact with presenters is *much* better.                            
    ## [11] Better focus on technical content, possibility to continue working in between sessions and focus on other activities post-sessions, improvement of the quality and the details in the talks,  
    ## [12] No travel - better both for day-to-day and for lockdown!                                                                                                                                      
    ## 28 Levels: Actual presentations and Q/A. ...

### Cons: What did not work well about attending remotely

    ##  [1] The audience definitely seemed to skew time-zone local - PAM regulars from Europe and Asia seemed to be missing -- ie we can expect people to reset their personal clocks for travel, but not for a virtual conference (especially with other factors). 
    ##  [2] The social interactions                                                                                                                                                                                                                                 
    ##  [3] nothing, I didn't have any problems                                                                                                                                                                                                                     
    ##  [4] social interaction with colleagues                                                                                                                                                                                                                      
    ##  [5] Just like seeing videos on youtube...                                                                                                                                                                                                                   
    ##  [6] the last talks were in the early morning hours in my time. I was lucky to get a slot with manageable time constraints for presenting.                                                                                                                   
    ##  [7] Timezone differences, lack of hallway discussions                                                                                                                                                                                                       
    ##  [8] Interaction with other researchers                                                                                                                                                                                                                      
    ##  [9] the hallway                                                                                                                                                                                                                                             
    ## [10] I felt I didn't have the chance to interact with enough people and make new connections, maybe it's me though.                                                                                                                                          
    ## [11] Increase of the amount of the information to parse from each presentation, less social interactions, less discussions with other members of the community, etc.                                                                                         
    ## [12] Some distractions from family, as conference in evening for my time zone.                                                                                                                                                                               
    ## 28 Levels: Attending sessions was difficult to due time zone differences. However, another issue is that the regular work continues (and seems more important though it perhaps isn't). Being at a venue blocks your agenda and makes your focus on the conference.  ...

### Other comments / suggestions / feedback

    ##  [1]                                                                                                                                                                                                                                                                                                                                                                                          
    ##  [2]                                                                                                                                                                                                                                                                                                                                                                                          
    ##  [3]                                                                                                                                                                                                                                                                                                                                                                                          
    ##  [4]                                                                                                                                                                                                                                                                                                                                                                                          
    ##  [5] Organizers did a super job. It’s just that remote conferences are not ... conferences                                                                                                                                                                                                                                                                                                    
    ##  [6] You did a great job! thanks for making this a success!                                                                                                                                                                                                                                                                                                                                   
    ##  [7] Great work, organizers and chairs!                                                                                                                                                                                                                                                                                                                                                       
    ##  [8]                                                                                                                                                                                                                                                                                                                                                                                          
    ##  [9] my sympathies to the organizers.  it came off better than i hoped.                                                                                                                                                                                                                                                                                                                       
    ## [10] Use slack for Q&A after presentations because of the ability to follow threads. A open-discussion Zoom session. Talks/slides are published after they are streamed to have the ability to rewind some points. Have a speed-dating session for participants in which each participant should make a 5-min call with a random subset of other participants to re-enforce the social aspect.
    ## [11] I believe some (top) conferences can have both the virtual and the in-person version in the future, while others can only adopt the virtual version.  \nOn a side note, the committee could also give people -- except paper authors -- who can only attend a day or half day, a pay-as-you-go option, i.e. the possibility to pay only for the period they are only available for.      
    ## [12] I really enjoyed it, and would definitely do it again.                                                                                                                                                                                                                                                                                                                                   
    ## 14 Levels:  ...
