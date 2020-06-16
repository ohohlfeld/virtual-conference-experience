PAM 2020: Responses by users with *no* prior remote conference
experience
================

This document contains results to the PAM 2020 questionnaires.

# Pre-Conf Questionnaire

Number of responses:

    ## [1] 25

## Personal Details

How many PAM conferences have you attended, including this one?
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

In which timezone are you?

    preconf$timezone <- recode(preconf$timezone,
           "(GMT -8:00) Pacific Time (US & Canada)" = "-8",
           "(GMT -5:00) Eastern Time (US & Canada), Bogota, Lima" = "-5",
           "(GMT -4:00) Atlantic Time (Canada), Caracas, La Paz" = "-4",
           "(GMT +1:00) Brussels, Copenhagen, Madrid, Paris" = "+1",
           "(GMT +3:00) Baghdad, Riyadh, Moscow, St. Petersburg" = "+3",
           "(GMT +8:00) Beijing, Perth, Singapore, Hong Kong" = "+8"
    )

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

From where are you participating in PAM?
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-6-1.png)<!-- -->

Please rate your professional seniority
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

Have you attended a remote conference before?
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-8-1.png)<!-- -->

Would you have attended PAM as on-site conference in Oregon?
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-9-1.png)<!-- -->

## Planned participation

Do you intend to use the conference Slack/Zoom as virtual hallway track?
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-10-1.png)<!-- -->

In which sessions do you plan to participate?
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-11-1.png)<!-- -->

Do you think you would attend more sessions if you would have attended
PAM as on-site venue?
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-12-1.png)<!-- -->

## Your goals when attending a on-site conference (e.g., prior editions of PAM)

To begin with, please tell us about your goals when attending an
*on-site conference in person* (such as PAM in the previous years). We
will ask you to your goals when attending PAM as online conference in
the next section.

Importance of presenting my work to this community
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-13-1.png)<!-- -->

Importance of following paper/poster presentations
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-14-1.png)<!-- -->

Importance of interacting with other researchers I already know
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-15-1.png)<!-- -->

Importance of meeting new researchers
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-16-1.png)<!-- -->

Importance of visiting the city/country in which the conference is held
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-17-1.png)<!-- -->

## Your goals when attending PAM as virtual conference

Importance of presenting my work to this community
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

Importance of following paper/poster presentations
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-19-1.png)<!-- -->

Importance of interacting with other researchers I already know
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

Importance of meeting new researchers
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-21-1.png)<!-- -->

## Other comments (optional)

Do you have other feedback / wishes / comments that you would like to
share?

``` r
preconf$feedback
```

    ##  [1]                                                                                                                                                                                                                                     
    ##  [2]                                                                                                                                                                                                                                     
    ##  [3] Alas there's no adjustments for European time zones                                                                                                                                                                                 
    ##  [4]                                                                                                                                                                                                                                     
    ##  [5]                                                                                                                                                                                                                                     
    ##  [6]                                                                                                                                                                                                                                     
    ##  [7]                                                                                                                                                                                                                                     
    ##  [8]                                                                                                                                                                                                                                     
    ##  [9] Thank you for the on-line version                                                                                                                                                                                                   
    ## [10]                                                                                                                                                                                                                                     
    ## [11]                                                                                                                                                                                                                                     
    ## [12]                                                                                                                                                                                                                                     
    ## [13]                                                                                                                                                                                                                                     
    ## [14] I think in an online format, doing 10-15 min videos + 15 min questions would have allowed for more interaction with the community than the 25 min talk + 5 min questions, given that post-talk corridor talk will be more difficult.
    ## [15]                                                                                                                                                                                                                                     
    ## [16] Thanks for your effort in making this a remote conference!                                                                                                                                                                          
    ## [17]                                                                                                                                                                                                                                     
    ## [18]                                                                                                                                                                                                                                     
    ## [19]                                                                                                                                                                                                                                     
    ## [20]                                                                                                                                                                                                                                     
    ## [21] My opinions may change...                                                                                                                                                                                                           
    ## [22]                                                                                                                                                                                                                                     
    ## [23]                                                                                                                                                                                                                                     
    ## [24]                                                                                                                                                                                                                                     
    ## [25]                                                                                                                                                                                                                                     
    ## 8 Levels:  ... The time difference makes attending the conference very hard, and limits my participation to the few sessions during which I can stay awake.

# Post-Conf Questionnaire

Number of responses:

    ## [1] 24

## Personal details

We first would like to learn few personal details about you to be able
to better interpret your answers in this questionnaire.

Note that these questions are the same as in the pre-conference
questionnaire since we cannot correlate both questionnaires due to
anonymity.

How many PAM conferences have you attended, including this one?
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

In which timezone are you?

    postconf$timezone <- recode(postconf$timezone,
           "(GMT -8:00) Pacific Time (US & Canada)" = "-8",
           "(GMT -7:00) Mountain Time (US & Canada)" = "-7",
           "(GMT -5:00) Eastern Time (US & Canada), Bogota, Lima" = "-5",
           "(GMT) Western Europe Time, London, Lisbon, Casablanca" = "+0",
           "(GMT +1:00) Brussels, Copenhagen, Madrid, Paris" = "+1",
           "(GMT +8:00) Beijing, Perth, Singapore, Hong Kong" = "+8"
    )

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-25-1.png)<!-- -->

From where are you participating in PAM?
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

Please rate your professional seniority
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-27-1.png)<!-- -->

Have you attended a remote conference before?
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

Would you have attended PAM as on-site conference in Oregon?
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

## Overall Experience

This block is about assessing your overall experience of attending PAM
as virtual conference. Did you enjoy it?

### Overall Experience

My overall experience of attending remotely PAM is
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-30-1.png)<!-- -->

### Compared to attending on-site, attending remotely allowed me to better focus on the conference

I was more focused on the *technical content*
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-31-1.png)<!-- -->

I was more focused on *social interactions*
![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

### My expectations on attending a virtual conference were met

To present my
work

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

To follow
presentations

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

To interact with
speakers

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

To interact with
participants

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

### (optional) To speakers: My expectations on attending a virtual conference were met

This is a bug: the question was asked twice (mandatory above),
optionally here.

To present my
work

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### Would you attend more conferences each year if they are offered online

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

## Talk Sessions

In this section, we are interested how you experienced the talks
sessions (i.e., paper and poster
presentations).

### What tools did you use to participate in the conference and how well did they work?

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-39-1.png)<!-- -->

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### How do you rate the presentation sessions of this virtual conference compared to on-site conferences?

Ability to attend
talks

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-41-1.png)<!-- -->

Ability to focus on the talks without
distractions

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-42-1.png)<!-- -->

Ability to ask
questions

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-43-1.png)<!-- -->

Ability to deeply discuss a topic openly with all
participants

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-44-1.png)<!-- -->

### Did you experience video or audio degradations in Zoom?

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

### Which one of the following factors during the online presentations affected your interest or ability to follow the talk or remain engage

Having a video of the speaker in the corner of
slides

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->

Presenter’s tone of
speaking

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

Changing of the audio across different segments of the
presentation

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-49-1.png)<!-- -->

### Pros/Cons of pre-recorded talks

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### (optional) Pros: What did you like about pre-recorded talks?

    ##  [1]                                                                                                                                                                                                                                                                                                                                                                                                                            
    ##  [2] I think it made the talk experience more uniform overall -- even with the variations in audio quality in tone, it was less than you'd usually find in a live, in-person presentation.                                                                                                                                                                                                                                      
    ##  [3]                                                                                                                                                                                                                                                                                                                                                                                                                            
    ##  [4]                                                                                                                                                                                                                                                                                                                                                                                                                            
    ##  [5] All speakers did very good job of pacing themselves and sticking to time limit                                                                                                                                                                                                                                                                                                                                             
    ##  [6] allows presenters to give a polished version of talk without a lot practicing or overtalking                                                                                                                                                                                                                                                                                                                               
    ##  [7] We knew there would be a talk (unlikely to have connectivity problems) and they would start on time (no need to check sound and video working at each transition).                                                                                                                                                                                                                                                         
    ##  [8] One can reduce the number of mistakes during the presentations, and can focus on the main messages.                                                                                                                                                                                                                                                                                                                        
    ##  [9]                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [10]                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [11]                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [12] Choice of the presenter: less interactive, i.e., w/o video in a youtube-tutorial style, or highly interactive like a live presentation in front of an audience                                                                                                                                                                                                                                                             
    ## [13] there was little presentational quality loss due to nervousness!                                                                                                                                                                                                                                                                                                                                                           
    ## [14] Well done and all talks were very well timed.                                                                                                                                                                                                                                                                                                                                                                              
    ## [15]                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [16] It solves  potential technical problems, but as well allowed speakers to improve their presentation.                                                                                                                                                                                                                                                                                                                       
    ## [17]                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [18]                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [19] No connection issues.                                                                                                                                                                                                                                                                                                                                                                                                      
    ## [20]                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [21] I like it as a presenter. It allows me to achieve better quality, and do it again if I miss something.                                                                                                                                                                                                                                                                                                                     
    ## [22]                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [23] All authors made sure to give as much as details in their presentations; we can access the videos and go through the talks again when their are made available; It participated to the fact that we did not had any author loosing their connection during the talk; Since the presentation was already pre-recorded, authors can just came in to answer questions and focus on networking or learning about other's work. 
    ## [24]                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## 15 Levels:  ...

### (optional) Cons: What did you not like about pre-recorded talks?

    ##  [1]                                                                                                                                                                                                                      
    ##  [2]                                                                                                                                                                                                                      
    ##  [3]                                                                                                                                                                                                                      
    ##  [4]                                                                                                                                                                                                                      
    ##  [5] It was helpful if there was a speaker in the corner. I didn't like the talks that only had slides.                                                                                                                   
    ##  [6] not much. wouldn't mind if live conferences used pre-recorded talks.                                                                                                                                                 
    ##  [7] Some videos had very little interaction and monotonous voice track, making it very difficult to follow the talk.                                                                                                     
    ##  [8] None                                                                                                                                                                                                                 
    ##  [9] didn't like those that used computerized speech                                                                                                                                                                      
    ## [10]                                                                                                                                                                                                                      
    ## [11]                                                                                                                                                                                                                      
    ## [12] Glued together A/V, i.e., every other slide changing Audio and/or Video conditions                                                                                                                                   
    ## [13] The quality of the recorded audio varied a lot. Sometimes it was harder/more energy demanding to listen to the prerecorded talk than it might have been during an in-person meeting.                                 
    ## [14] Most of the pre-recorded talks were well done. Some, however, experienced bad audio quality (probably from using built-in Laptop mic instead of external headset).                                                   
    ## [15]                                                                                                                                                                                                                      
    ## [16]                                                                                                                                                                                                                      
    ## [17]                                                                                                                                                                                                                      
    ## [18]                                                                                                                                                                                                                      
    ## [19] It was my first time to present in front of a webcam. This was harder than expected. The problem with pre-recording is that there's less pressure and it's difficult to make a connection with the audience/ambiance.
    ## [20] Decreased ability to engage with speaker afterwards                                                                                                                                                                  
    ## [21] Audio quality in some presentations was bad. Too much echo or volume too low for example.                                                                                                                            
    ## [22]                                                                                                                                                                                                                      
    ## [23] The amount of time and work it requires for authors to prepare them.                                                                                                                                                 
    ## [24]                                                                                                                                                                                                                      
    ## 14 Levels:  ...

### How many paper sessions did you skip due to time zone differences

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-53-1.png)<!-- -->

## Presentation-related Interactions

This section is about how you interacted with other participants about
the content presented at the conference in terms of papers and
posters.

### Did you participate in technical discussions on Slack or Zoom?

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-54-1.png)<!-- -->

### How do you rate the interaction with others during this virtual conference compared to on-site conferences?

Ability to ask
questions

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-55-1.png)<!-- -->

Moderation of questions by the session chairs when posting to the Zoom
chat

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-56-1.png)<!-- -->

Ability for detailed technical
discussions

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-57-1.png)<!-- -->

### With how many participants did you interact in *private* chats?

Slack private
chats

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-58-1.png)<!-- -->

Zoom private
chats

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

### (optional): Pros: Other feedback on *positive* aspects of the ability to interact during this virtual conference

    ##  [1]                                                                                                                                                                                                                                                                                                                                                                                 
    ##  [2] I think the interactions were much easier -- digital communication is often significantly easier (which comes with its own challenges, especially concerning inadvertent tone, etc.), so I think it made it easier for a wider set to ask questions, and also created a slightly less stressful opportunity for authors to respond (especially compared to standing on a stage).
    ##  [3]                                                                                                                                                                                                                                                                                                                                                                                 
    ##  [4]                                                                                                                                                                                                                                                                                                                                                                                 
    ##  [5] It worked better than I expected. I was very impressed.                                                                                                                                                                                                                                                                                                                         
    ##  [6]                                                                                                                                                                                                                                                                                                                                                                                 
    ##  [7] Interacting during sessions did not interrupt sessions and you could follow the session at the same time.                                                                                                                                                                                                                                                                       
    ##  [8]                                                                                                                                                                                                                                                                                                                                                                                 
    ##  [9]                                                                                                                                                                                                                                                                                                                                                                                 
    ## [10]                                                                                                                                                                                                                                                                                                                                                                                 
    ## [11]                                                                                                                                                                                                                                                                                                                                                                                 
    ## [12]                                                                                                                                                                                                                                                                                                                                                                                 
    ## [13] slack facilitates getting into contact.                                                                                                                                                                                                                                                                                                                                         
    ## [14]                                                                                                                                                                                                                                                                                                                                                                                 
    ## [15]                                                                                                                                                                                                                                                                                                                                                                                 
    ## [16]                                                                                                                                                                                                                                                                                                                                                                                 
    ## [17]                                                                                                                                                                                                                                                                                                                                                                                 
    ## [18]                                                                                                                                                                                                                                                                                                                                                                                 
    ## [19]                                                                                                                                                                                                                                                                                                                                                                                 
    ## [20]                                                                                                                                                                                                                                                                                                                                                                                 
    ## [21]                                                                                                                                                                                                                                                                                                                                                                                 
    ## [22]                                                                                                                                                                                                                                                                                                                                                                                 
    ## [23] Attending the virtual conference allowed us to continue our main routine/be working/having calls in between or post-sessions. I also followed the talks better and if we could have the videos to go through them at will later, that would be even better.                                                                                                                     
    ## [24]                                                                                                                                                                                                                                                                                                                                                                                 
    ## 8 Levels:  ...

### (optional): Cons: Other feedback on *negative* aspects of the ability to interact during this virtual conference

    ##  [1]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ##  [2] I think this may have scaling challenges beyond a setting like PAM. While it worked great here, if there were more questions, the "ask directly in zoom" method may have become untenable.                                                                                                                                                                                                                                                                                                                                                                                 
    ##  [3]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ##  [4]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ##  [5]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ##  [6] no natural ability to meet new people                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
    ##  [7] I only talked with 2 people I didn’t know before. I didn’t find there was any good moment to reach out to people I didn’t know and I wanted to. I had imagined myself talking to someone in the community that I’ve been wanting to meet for some time but did not feel there was a good time to send a private slack message out of the blue. When sessions were over, I didn’t want to stay all the break close to my computer and felt other people wouldn’t either. So I never contacted this person and I know I would have done it during a break in the conference. 
    ##  [8] As a poster presenter, we were given too limited time to receive feedback and have further discussions.                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ##  [9]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [10]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [11]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [12] Not all attendees were registered in Slack, so interactions switched to other channels like twitter                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## [13] The conversation partner always knows that there is some agenda. There is limited room for "random discussions in the lunch queue". However, it's hard to emulate those during an online discussion.                                                                                                                                                                                                                                                                                                                                                                       
    ## [14]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [15]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [16]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [17]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [18]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [19] Questions stay at a higher level. Difficult to meet people and explore collaborations.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
    ## [20]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [21]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [22]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## [23] There is like a virtual barrier when you never met someone and you need to ask questions or discuss for the first time. That barrier was removed by interacting, meeting in person, and the attending the events organised at the unperson conference. That factor (getting to know each other better and have deeper conversations) is what we missed during the virtual conference.                                                                                                                                                                                      
    ## [24]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## 11 Levels:  ...

## Social Interactions (Virtual Hallway Track)

Besides content related to technical presentations (papers / posters),
conferences are about general interactions with known and new
researchers (e.g., during breaks or at the dinner table): the hallway
track. We are interested in this section how you experienced the hallway
track at
PAM.

### Did you use Slack or the Zoom chat to interact with others about topics unrelated to the presentations?

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-62-1.png)<!-- -->

### How do you rate the quality of social interactions (unrelated to the presentations) during this virtual conference compared to classical on-site conferences?

Interactions with researchers I already
know

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->

Interactions with new researchers I didn’t know
before

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-64-1.png)<!-- -->

### (optional) What did you enjoy about social interaction at this virtual conference?

    ##  [1]                                                                                                                                                                   
    ##  [2] It made some interactions easier: no need to wait for another researcher to not be busy to catch them in a hallway -- you can simply message them asynchronously. 
    ##  [3]                                                                                                                                                                   
    ##  [4]                                                                                                                                                                   
    ##  [5]                                                                                                                                                                   
    ##  [6]                                                                                                                                                                   
    ##  [7] Nothing. I felt very lonely during the conference.                                                                                                                
    ##  [8]                                                                                                                                                                   
    ##  [9]                                                                                                                                                                   
    ## [10]                                                                                                                                                                   
    ## [11]                                                                                                                                                                   
    ## [12]                                                                                                                                                                   
    ## [13]                                                                                                                                                                   
    ## [14]                                                                                                                                                                   
    ## [15]                                                                                                                                                                   
    ## [16] I hardly interacted.                                                                                                                                              
    ## [17]                                                                                                                                                                   
    ## [18]                                                                                                                                                                   
    ## [19]                                                                                                                                                                   
    ## [20]                                                                                                                                                                   
    ## [21]                                                                                                                                                                   
    ## [22]                                                                                                                                                                   
    ## [23] There was not really social interaction from my perspective compared to other conferences I've been to.                                                           
    ## [24]                                                                                                                                                                   
    ## 8 Levels:  ... not much

### (optional) How can social interactions be improved at virtual conferences?

    ##  [1]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ##  [2] Facilitating some small-group voice communication might be interesting. As an industry participant, there are a number of operational insights I would generally like to share with other researchers that are complicated to do in written virtual settings. This could be mitigated with smaller group audio chats as part of the event (other suddenly-virtual conferences have had some luck with BoF sessions and things of that nature).                                                                                                                                                                                                   
    ##  [3]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ##  [4]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ##  [5]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ##  [6]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ##  [7] This is difficult. I guess a more structured online mixer would have been helpful. For instance something like speed dating between people with similar interest. Using previous questionnaires there could be some match making and a few free slots for each participants wanting to do 3-5min speed dating with the community, be there to meet someone new or to simply have a fixed time to talk with someone you know about what is going on at the conference. Participants can then continue chatting via private slack messages if wanted. But that initial mixer would set the tone for having time for interactions outside sessions. 
    ##  [8]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ##  [9]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [10]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [11]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [12]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [13]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [14] Due to the virtual nature there was less social interaction.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
    ## [15]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [16]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [17]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [18]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [19]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [20]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [21]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [22]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [23] We could also organize a virtual dinner, with the possibility to have breakout zoom rooms where a couple of people could discuss about topics of interests or future collaborations.                                                                                                                                                                                                                                                                                                                                                                                                                                                             
    ## [24]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## 7 Levels:  ... i am not seeing any virtualized meetings being successful at this.  and that is bad.

## General comments about remote attendance

### I would like to attend more virtual conferences in the future

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-67-1.png)<!-- -->

### How many venues should be virtual in the future?

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-68-1.png)<!-- -->

### Net Promotor Score: How likely is it that you would recommend attending PAM as virtual conference to a colleague?

0 Not at all likely to recommend - 10 Extremely likely to
recommend

![](pam_no_prior_remote_experience_files/figure-gfm/unnamed-chunk-69-1.png)<!-- -->

### Pros: What worked well about attending remotely

    ##  [1] Convenient to get to, no travel hassle                                                                                                                                                        
    ##  [2] Easy to tune in  -- especially as it matched my timezone.                                                                                                                                     
    ##  [3] not affected by travel restrictions; save time                                                                                                                                                
    ##  [4] The presentations                                                                                                                                                                             
    ##  [5] I was able to attend on my own schedule from home. Sound and video were good, as well as  interactions with speakers.                                                                         
    ##  [6] it was easier with family                                                                                                                                                                     
    ##  [7] No commuting to the conference and much cheaper to attend. These are two huge advantages.                                                                                                     
    ##  [8] Less stress in delivering a talk                                                                                                                                                              
    ##  [9] easier to attend                                                                                                                                                                              
    ## [10] No travel, affordable possibility to attend                                                                                                                                                   
    ## [11] Great presentation and interaction with presenters.                                                                                                                                           
    ## [12] Technical Setup, Session following, very structured, good organisation, Pre-recorded Talks were very helpful in limiting disruptions                                                          
    ## [13] no travel cost (as in time and money)                                                                                                                                                         
    ## [14] The video conferencing system worked quite well.                                                                                                                                              
    ## [15] Great technical support, videos largely well done,                                                                                                                                            
    ## [16] Actual presentations and Q/A.                                                                                                                                                                 
    ## [17] Following the presentations                                                                                                                                                                   
    ## [18] Easy to fit to my schedule                                                                                                                                                                    
    ## [19] You can watch videos on-demand. There no travel costs. Better for the environment.                                                                                                            
    ## [20] Convenient                                                                                                                                                                                    
    ## [21] Flexibility, expense.                                                                                                                                                                         
    ## [22] Talks were well prepared                                                                                                                                                                      
    ## [23] Better focus on technical content, possibility to continue working in between sessions and focus on other activities post-sessions, improvement of the quality and the details in the talks,  
    ## [24] No travel - better both for day-to-day and for lockdown!                                                                                                                                      
    ## 28 Levels: Actual presentations and Q/A. ...

### Cons: What did not work well about attending remotely

    ##  [1] I found it easier to get distracted (which is my issue and not yours), and some of the talks of course ended up during meals because of timezones.                                                                                                       
    ##  [2] The audience definitely seemed to skew time-zone local - PAM regulars from Europe and Asia seemed to be missing -- ie we can expect people to reset their personal clocks for travel, but not for a virtual conference (especially with other factors).  
    ##  [3] time zone difference ; pre-recorded presentation not flexible                                                                                                                                                                                            
    ##  [4] The social interactions                                                                                                                                                                                                                                  
    ##  [5] nothing, I didn't have any problems                                                                                                                                                                                                                      
    ##  [6] meeting people and forming collaborations                                                                                                                                                                                                                
    ##  [7] Getting a sense of community, getting to know the community better.                                                                                                                                                                                      
    ##  [8] Offline discussion is more difficult somehow                                                                                                                                                                                                             
    ##  [9] social interaction with colleagues                                                                                                                                                                                                                       
    ## [10] No private/off topic conversations during the breaks, mainly focused on presentations                                                                                                                                                                    
    ## [11] Time zone difference makes me feel not so great                                                                                                                                                                                                          
    ## [12] Sometimes I got distracted while working from home, which can be fixed by attending from the office in the future. Social Interactions were very limited.                                                                                                
    ## [13] the last talks were in the early morning hours in my time. I was lucky to get a slot with manageable time constraints for presenting.                                                                                                                    
    ## [14] Timezone differences, lack of hallway discussions                                                                                                                                                                                                        
    ## [15] It will take some iteration before we get used and look for interaction with others                                                                                                                                                                      
    ## [16] No effective social interaction, which I greatly miss.                                                                                                                                                                                                   
    ## [17] Trying not to do my own work                                                                                                                                                                                                                             
    ## [18] Interaction with other researchers                                                                                                                                                                                                                       
    ## [19] Attending sessions was difficult to due time zone differences. However, another issue is that the regular work continues (and seems more important though it perhaps isn't). Being at a venue blocks your agenda and makes your focus on the conference. 
    ## [20] Interaction with other participants                                                                                                                                                                                                                      
    ## [21] Encouragement for new researchers, discovery, socialization                                                                                                                                                                                              
    ## [22] Timezone, my session was on 11 PM local                                                                                                                                                                                                                  
    ## [23] Increase of the amount of the information to parse from each presentation, less social interactions, less discussions with other members of the community, etc.                                                                                          
    ## [24] Some distractions from family, as conference in evening for my time zone.                                                                                                                                                                                
    ## 28 Levels: Attending sessions was difficult to due time zone differences. However, another issue is that the regular work continues (and seems more important though it perhaps isn't). Being at a venue blocks your agenda and makes your focus on the conference.  ...

### Other comments / suggestions / feedback

    ##  [1] While I would have definitely preferred it to be in person, the organizers did a really great job given the circumstances. I can only imagine the machinations that went into moving PAM from in-person to virtual, and I very much appreciate the work that you all did.                                                                                                                                                                        
    ##  [2]                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ##  [3]                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ##  [4]                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ##  [5]                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ##  [6]                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ##  [7] From my experience, I see the trade off being: invest more time & resources in attending in person to a conference and getting quite a bit from the in person interaction or not as much time and resources invested in attending online but getting less out of it. So from that trade off I think there could be conference fully online or at least have conference give the option to attend online (real-time streaming + dedicated chats). 
    ##  [8]                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ##  [9]                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [10]                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [11]                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [12] No travel time and costs, no negative climate impact, reduced registration fees - this could lead to more attendees if this format is established. win|win!                                                                                                                                                                                                                                                                                      
    ## [13] You did a great job! thanks for making this a success!                                                                                                                                                                                                                                                                                                                                                                                           
    ## [14] Great work, organizers and chairs!                                                                                                                                                                                                                                                                                                                                                                                                               
    ## [15] Remote participation should be enabled also for physical events                                                                                                                                                                                                                                                                                                                                                                                  
    ## [16]                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [17]                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [18]                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [19] Thanks for your flexibility in changing the conference to a remote one. I can imagine this was very difficult for you. When this is all over, I hope to shake hands with you and have a drink in person. I planned a holiday to Oregon anyway. ;-)  Cheer, Thymen                                                                                                                                                                                
    ## [20]                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [21]                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [22]                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## [23] I believe some (top) conferences can have both the virtual and the in-person version in the future, while others can only adopt the virtual version.  \nOn a side note, the committee could also give people -- except paper authors -- who can only attend a day or half day, a pay-as-you-go option, i.e. the possibility to pay only for the period they are only available for.                                                              
    ## [24] I really enjoyed it, and would definitely do it again.                                                                                                                                                                                                                                                                                                                                                                                           
    ## 14 Levels:  ...
