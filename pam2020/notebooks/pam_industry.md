PAM 2020: Responses by industry
================

This document contains results to the PAM 2020 questionnaires by
*industry participants* only. We define industry as a combination of
“Industry” and “government scientist” since they potentially share the
same objectives in attending.

# Pre-Conf Questionnaire

Number of responses:

    ## [1] 9

## Personal Details

How many PAM conferences have you attended, including this one?
![](pam_industry_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

In which timezone are you?

    preconf$timezone <- recode(preconf$timezone,
           "(GMT -8:00) Pacific Time (US & Canada)" = "-8",
           "(GMT -5:00) Eastern Time (US & Canada), Bogota, Lima" = "-5",
           "(GMT -4:00) Atlantic Time (Canada), Caracas, La Paz" = "-4",
           "(GMT +1:00) Brussels, Copenhagen, Madrid, Paris" = "+1",
           "(GMT +3:00) Baghdad, Riyadh, Moscow, St. Petersburg" = "+3",
           "(GMT +8:00) Beijing, Perth, Singapore, Hong Kong" = "+8"
    )

![](pam_industry_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

From where are you participating in PAM?
![](pam_industry_files/figure-gfm/unnamed-chunk-6-1.png)<!-- -->

Please rate your professional seniority
![](pam_industry_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

Have you attended a remote conference before?
![](pam_industry_files/figure-gfm/unnamed-chunk-8-1.png)<!-- -->

Would you have attended PAM as on-site conference in Oregon?
![](pam_industry_files/figure-gfm/unnamed-chunk-9-1.png)<!-- -->

## Planned participation

Do you intend to use the conference Slack/Zoom as virtual hallway track?
![](pam_industry_files/figure-gfm/unnamed-chunk-10-1.png)<!-- -->

In which sessions do you plan to participate?
![](pam_industry_files/figure-gfm/unnamed-chunk-11-1.png)<!-- -->

Do you think you would attend more sessions if you would have attended
PAM as on-site venue?
![](pam_industry_files/figure-gfm/unnamed-chunk-12-1.png)<!-- -->

## Your goals when attending a on-site conference (e.g., prior editions of PAM)

To begin with, please tell us about your goals when attending an
*on-site conference in person* (such as PAM in the previous years). We
will ask you to your goals when attending PAM as online conference in
the next section.

Importance of presenting my work to this community
![](pam_industry_files/figure-gfm/unnamed-chunk-13-1.png)<!-- -->

Importance of following paper/poster presentations
![](pam_industry_files/figure-gfm/unnamed-chunk-14-1.png)<!-- -->

Importance of interacting with other researchers I already know
![](pam_industry_files/figure-gfm/unnamed-chunk-15-1.png)<!-- -->

Importance of meeting new researchers
![](pam_industry_files/figure-gfm/unnamed-chunk-16-1.png)<!-- -->

Importance of visiting the city/country in which the conference is held
![](pam_industry_files/figure-gfm/unnamed-chunk-17-1.png)<!-- -->

## Your goals when attending PAM as virtual conference

Importance of presenting my work to this community
![](pam_industry_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

Importance of following paper/poster presentations
![](pam_industry_files/figure-gfm/unnamed-chunk-19-1.png)<!-- -->

Importance of interacting with other researchers I already know
![](pam_industry_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

Importance of meeting new researchers
![](pam_industry_files/figure-gfm/unnamed-chunk-21-1.png)<!-- -->

## Other comments (optional)

Do you have other feedback / wishes / comments that you would like to
share?

``` r
preconf$feedback
```

    ## [1]                                                                                                                                             
    ## [2] Thank you for the on-line version                                                                                                           
    ## [3]                                                                                                                                             
    ## [4] Thanks for your effort in making this a remote conference!                                                                                  
    ## [5] The time difference makes attending the conference very hard, and limits my participation to the few sessions during which I can stay awake.
    ## [6]                                                                                                                                             
    ## [7]                                                                                                                                             
    ## [8]                                                                                                                                             
    ## [9]                                                                                                                                             
    ## 8 Levels:  ... The time difference makes attending the conference very hard, and limits my participation to the few sessions during which I can stay awake.

# Post-Conf Questionnaire

Number of responses:

    ## [1] 6

## Personal details

We first would like to learn few personal details about you to be able
to better interpret your answers in this questionnaire.

Note that these questions are the same as in the pre-conference
questionnaire since we cannot correlate both questionnaires due to
anonymity.

How many PAM conferences have you attended, including this one?
![](pam_industry_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

In which timezone are you?

    postconf$timezone <- recode(postconf$timezone,
           "(GMT -8:00) Pacific Time (US & Canada)" = "-8",
           "(GMT -7:00) Mountain Time (US & Canada)" = "-7",
           "(GMT -5:00) Eastern Time (US & Canada), Bogota, Lima" = "-5",
           "(GMT) Western Europe Time, London, Lisbon, Casablanca" = "+0",
           "(GMT +1:00) Brussels, Copenhagen, Madrid, Paris" = "+1",
           "(GMT +8:00) Beijing, Perth, Singapore, Hong Kong" = "+8"
    )

![](pam_industry_files/figure-gfm/unnamed-chunk-25-1.png)<!-- -->

From where are you participating in PAM?
![](pam_industry_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

Please rate your professional seniority
![](pam_industry_files/figure-gfm/unnamed-chunk-27-1.png)<!-- -->

Have you attended a remote conference before?
![](pam_industry_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

Would you have attended PAM as on-site conference in Oregon?
![](pam_industry_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

## Overall Experience

This block is about assessing your overall experience of attending PAM
as virtual conference. Did you enjoy it?

### Overall Experience

My overall experience of attending remotely PAM is
![](pam_industry_files/figure-gfm/unnamed-chunk-30-1.png)<!-- -->

### Compared to attending on-site, attending remotely allowed me to better focus on the conference

I was more focused on the *technical content*
![](pam_industry_files/figure-gfm/unnamed-chunk-31-1.png)<!-- -->

I was more focused on *social interactions*
![](pam_industry_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

### My expectations on attending a virtual conference were met

To present my work

![](pam_industry_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

To follow presentations

![](pam_industry_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

To interact with speakers

![](pam_industry_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

To interact with
participants

![](pam_industry_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

### (optional) To speakers: My expectations on attending a virtual conference were met

This is a bug: the question was asked twice (mandatory above),
optionally here.

To present my
work

![](pam_industry_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### Would you attend more conferences each year if they are offered online

![](pam_industry_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

## Talk Sessions

In this section, we are interested how you experienced the talks
sessions (i.e., paper and poster
presentations).

### What tools did you use to participate in the conference and how well did they work?

![](pam_industry_files/figure-gfm/unnamed-chunk-39-1.png)<!-- -->

![](pam_industry_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### How do you rate the presentation sessions of this virtual conference compared to on-site conferences?

Ability to attend talks

![](pam_industry_files/figure-gfm/unnamed-chunk-41-1.png)<!-- -->

Ability to focus on the talks without distractions

![](pam_industry_files/figure-gfm/unnamed-chunk-42-1.png)<!-- -->

Ability to ask questions

![](pam_industry_files/figure-gfm/unnamed-chunk-43-1.png)<!-- -->

Ability to deeply discuss a topic openly with all
participants

![](pam_industry_files/figure-gfm/unnamed-chunk-44-1.png)<!-- -->

### Did you experience video or audio degradations in Zoom?

![](pam_industry_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

![](pam_industry_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

### Which one of the following factors during the online presentations affected your interest or ability to follow the talk or remain engage

Having a video of the speaker in the corner of slides

![](pam_industry_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->

Presenter’s tone of speaking

![](pam_industry_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

Changing of the audio across different segments of the
    presentation

![](pam_industry_files/figure-gfm/unnamed-chunk-49-1.png)<!-- -->

### Pros/Cons of pre-recorded talks

![](pam_industry_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### (optional) Pros: What did you like about pre-recorded talks?

    ## [1] I think it made the talk experience more uniform overall -- even with the variations in audio quality in tone, it was less than you'd usually find in a live, in-person presentation.
    ## [2]                                                                                                                                                                                      
    ## [3]                                                                                                                                                                                      
    ## [4] helped weak speakers a bit                                                                                                                                                           
    ## [5] No connection issues.                                                                                                                                                                
    ## [6]                                                                                                                                                                                      
    ## 15 Levels:  ...

### (optional) Cons: What did you not like about pre-recorded talks?

    ## [1]                                                                                                                                                                                                                      
    ## [2]                                                                                                                                                                                                                      
    ## [3] didn't like those that used computerized speech                                                                                                                                                                      
    ## [4] that one robotic one was horrifying                                                                                                                                                                                  
    ## [5] It was my first time to present in front of a webcam. This was harder than expected. The problem with pre-recording is that there's less pressure and it's difficult to make a connection with the audience/ambiance.
    ## [6] Decreased ability to engage with speaker afterwards                                                                                                                                                                  
    ## 14 Levels:  ...

### How many paper sessions did you skip due to time zone differences

![](pam_industry_files/figure-gfm/unnamed-chunk-53-1.png)<!-- -->

## Presentation-related Interactions

This section is about how you interacted with other participants about
the content presented at the conference in terms of papers and
posters.

### Did you participate in technical discussions on Slack or Zoom?

![](pam_industry_files/figure-gfm/unnamed-chunk-54-1.png)<!-- -->

### How do you rate the interaction with others during this virtual conference compared to on-site conferences?

Ability to ask questions

![](pam_industry_files/figure-gfm/unnamed-chunk-55-1.png)<!-- -->

Moderation of questions by the session chairs when posting to the Zoom
chat

![](pam_industry_files/figure-gfm/unnamed-chunk-56-1.png)<!-- -->

Ability for detailed technical discussions

![](pam_industry_files/figure-gfm/unnamed-chunk-57-1.png)<!-- -->

### With how many participants did you interact in *private* chats?

Slack private chats

![](pam_industry_files/figure-gfm/unnamed-chunk-58-1.png)<!-- -->

Zoom private
chats

![](pam_industry_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

### (optional): Pros: Other feedback on *positive* aspects of the ability to interact during this virtual conference

    ## [1] I think the interactions were much easier -- digital communication is often significantly easier (which comes with its own challenges, especially concerning inadvertent tone, etc.), so I think it made it easier for a wider set to ask questions, and also created a slightly less stressful opportunity for authors to respond (especially compared to standing on a stage).
    ## [2]                                                                                                                                                                                                                                                                                                                                                                                 
    ## [3]                                                                                                                                                                                                                                                                                                                                                                                 
    ## [4] i am used to zoom and slack, so those were easy                                                                                                                                                                                                                                                                                                                                 
    ## [5]                                                                                                                                                                                                                                                                                                                                                                                 
    ## [6]                                                                                                                                                                                                                                                                                                                                                                                 
    ## 8 Levels:  ...

### (optional): Cons: Other feedback on *negative* aspects of the ability to interact during this virtual conference

    ## [1] I think this may have scaling challenges beyond a setting like PAM. While it worked great here, if there were more questions, the "ask directly in zoom" method may have become untenable.
    ## [2]                                                                                                                                                                                           
    ## [3]                                                                                                                                                                                           
    ## [4] the hallway!!!!!  :(                                                                                                                                                                      
    ## [5] Questions stay at a higher level. Difficult to meet people and explore collaborations.                                                                                                    
    ## [6]                                                                                                                                                                                           
    ## 11 Levels:  ...

## Social Interactions (Virtual Hallway Track)

Besides content related to technical presentations (papers / posters),
conferences are about general interactions with known and new
researchers (e.g., during breaks or at the dinner table): the hallway
track. We are interested in this section how you experienced the hallway
track at
PAM.

### Did you use Slack or the Zoom chat to interact with others about topics unrelated to the presentations?

![](pam_industry_files/figure-gfm/unnamed-chunk-62-1.png)<!-- -->

### How do you rate the quality of social interactions (unrelated to the presentations) during this virtual conference compared to classical on-site conferences?

Interactions with researchers I already know

![](pam_industry_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->

Interactions with new researchers I didn’t know
before

![](pam_industry_files/figure-gfm/unnamed-chunk-64-1.png)<!-- -->

### (optional) What did you enjoy about social interaction at this virtual conference?

    ## [1] It made some interactions easier: no need to wait for another researcher to not be busy to catch them in a hallway -- you can simply message them asynchronously. 
    ## [2]                                                                                                                                                                   
    ## [3]                                                                                                                                                                   
    ## [4] not much                                                                                                                                                          
    ## [5]                                                                                                                                                                   
    ## [6]                                                                                                                                                                   
    ## 8 Levels:  ... not much

### (optional) How can social interactions be improved at virtual conferences?

    ## [1] Facilitating some small-group voice communication might be interesting. As an industry participant, there are a number of operational insights I would generally like to share with other researchers that are complicated to do in written virtual settings. This could be mitigated with smaller group audio chats as part of the event (other suddenly-virtual conferences have had some luck with BoF sessions and things of that nature).
    ## [2]                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## [3]                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## [4] i am not seeing any virtualized meetings being successful at this.  and that is bad.                                                                                                                                                                                                                                                                                                                                                          
    ## [5]                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## [6]                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## 7 Levels:  ... i am not seeing any virtualized meetings being successful at this.  and that is bad.

## General comments about remote attendance

### I would like to attend more virtual conferences in the future

![](pam_industry_files/figure-gfm/unnamed-chunk-67-1.png)<!-- -->

### How many venues should be virtual in the future?

![](pam_industry_files/figure-gfm/unnamed-chunk-68-1.png)<!-- -->

### Net Promotor Score: How likely is it that you would recommend attending PAM as virtual conference to a colleague?

0 Not at all likely to recommend - 10 Extremely likely to
    recommend

![](pam_industry_files/figure-gfm/unnamed-chunk-69-1.png)<!-- -->

### Pros: What worked well about attending remotely

    ## [1] Easy to tune in  -- especially as it matched my timezone.                         
    ## [2] The presentations                                                                 
    ## [3] easier to attend                                                                  
    ## [4] that we could do it at all                                                        
    ## [5] You can watch videos on-demand. There no travel costs. Better for the environment.
    ## [6] Convenient                                                                        
    ## 28 Levels: Actual presentations and Q/A. ...

### Cons: What did not work well about attending remotely

    ## [1] The audience definitely seemed to skew time-zone local - PAM regulars from Europe and Asia seemed to be missing -- ie we can expect people to reset their personal clocks for travel, but not for a virtual conference (especially with other factors).  
    ## [2] The social interactions                                                                                                                                                                                                                                  
    ## [3] social interaction with colleagues                                                                                                                                                                                                                       
    ## [4] the hallway                                                                                                                                                                                                                                              
    ## [5] Attending sessions was difficult to due time zone differences. However, another issue is that the regular work continues (and seems more important though it perhaps isn't). Being at a venue blocks your agenda and makes your focus on the conference. 
    ## [6] Interaction with other participants                                                                                                                                                                                                                      
    ## 28 Levels: Attending sessions was difficult to due time zone differences. However, another issue is that the regular work continues (and seems more important though it perhaps isn't). Being at a venue blocks your agenda and makes your focus on the conference.  ...

### Other comments / suggestions / feedback

    ## [1]                                                                                                                                                                                                                                                                   
    ## [2]                                                                                                                                                                                                                                                                   
    ## [3]                                                                                                                                                                                                                                                                   
    ## [4] my sympathies to the organizers.  it came off better than i hoped.                                                                                                                                                                                                
    ## [5] Thanks for your flexibility in changing the conference to a remote one. I can imagine this was very difficult for you. When this is all over, I hope to shake hands with you and have a drink in person. I planned a holiday to Oregon anyway. ;-)  Cheer, Thymen 
    ## [6]                                                                                                                                                                                                                                                                   
    ## 14 Levels:  ...
