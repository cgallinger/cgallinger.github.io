---
title: "Zoom, Zoom, Zoom... We're Going to the Moon"
excerpt: "A dream of generations is finally unfolding before our eyes---are we ready for it?"
date: 2023-07-26T09:00:00-04:00
header:
  image: /assets/images/image-filename.jpg
published: true
related: false
comments: true
categories:
  - blog
tags:
  - research
  - gradschool
  - conferences
---
{% assign imgpath = site.url | append: "/assets/images/" | append:  page.path | replace: ".md","" | replace: "_posts/",""  %}

Last week, I attended the [NASA Exploration Science Forum (NESF)](https://sservi.nasa.gov/nesf2023/), an annual conference centered around science that advances the capabilities, resources, and scientific return of NASA's human exploration activities. As usual for a scientific conference, there was a whirlwind of running between rooms to catch different talks, getting caught talking to someone about a poster (either theirs or your own) for an uncomfortably long amount of time, and of course the usual stream of complementary 2.5-star coffee administered almost intravenously in order to survive the whole thing. But in addition to these familiar and frantic activities, there was another feeling filling the air-conditioned Maryland hotel: a buzz of electricity, of a barely-contained excitement brewing amongst the only few hundred conference attendees.

You see, unlike many other planetary science meetings, this conference was not just about examining recently-returned spacecraft data and uncovering the solar system's ancient geological secrets. While there were many talks on fundamental science that was accomplished via that type of analysis, it was all in service of a much more refined and immediate goal---how humans would return to the Moon, within the next decade. 

The conference's initial iteration in 2008, when it was called the NASA Lunar Science Institute (NLSI) Lunar Science Conference, was a pivotal time during the end of the Bush years in America. George W. had staked his claim to the 21st century space game on the Constellation program, a series of missions that were meant to return to humans to the Moon for the first time in over three decades. The program began with the "Vision for Space Exploration" laid out by then-NASA Administrator Sean O'Keefe and President Bush in 2004 as a response to the fading confidence in the justification for a human space presence following the _Columbia_ disaster. Constellation would have three separate phases: the completion of the ISS, the return of humans to the Moon before 2020, and ultimately, as the rhetoric continues today, a foray into deep space to put human boots in the Red Planet at some unnamed time beyond.

As part of these activities, NASA knew they would need more information about any potential landing sites before they could set humans down on the surface again. The famous incident with Neil Armstrong having to [manually fly Eagle past the boulder field](https://youtu.be/xc1SzgGhMKc?t=922) demonstrated that, although the Lunar Orbiter missions had photographed 99% of the lunar surface at a resolution of 60 m or better, the finest scales of resolution could be crucial for a landing event. Additionally, there were more ambitious objectives associated with a return to the Moon: Bush and O'Keefe wanted astronauts to stay for extended periods of time, and that meant looking for one very precious resource indeed in the vacuum of space---water.

<figure class="half">
    <a href="{{ imgpath }}/LRO_(2007)_crop.jpg"><img src="{{ imgpath }}/LRO_(2007)_crop.jpg" alt="LRO" title="LRO"></a>
    <a href="{{ imgpath }}/LCROSS_Centaur.jpg"><img src="{{ imgpath }}/LCROSS_Centaur.jpg" alt="LCROSS and Centaur upper stage" title="LCROSS and Centaur upper stage"></a>
    <figcaption>(Left) LRO and (right) LCROSS, with the Centaur upper stage designed to slam into a lunar PSR.</figcaption>
</figure>

For these reasons, the "Vision for Space Exploration" set out goals to produce a spacecraft as the first part of its "Lunar Architecture" that would map the still largely-unexplored polar regions in search of water, as well as obtaining better images and data on the Moon as a whole with new technologies. This call for instruments eventually resulted in the development of two spacecraft: the Lunar Reconnaissance Orbiter (LRO), and the Lunar Crater Observation and Sensing Satellite (LCROSS). The former of these would be a workhorse orbiter, fitted with seven scientific instruments that would allow it to determine the form and quantity of frozen water at the poles, whether in thick sheets, buried interspersed "snow", or a layer of surface frost. The latter would be a more targeted investigation for the presence of water, but also a much more direct one: LCROSS would fly through the plume produced as the empty Centaur upper stage that had propelled it and LRO to the Moon slammed into the dark recesses of a "Permanently Shadowed Region" (PSR), in the hopes of getting a more direct taste of the Moon's water before crashing into the surface itself.

{% comment %}
{% include figure image_path="/assets/images/23-07-26/lro_lcross_atlas.jpg" alt="The configuration of the LRO and LCROSS spacecraft inside the Atlas rocket that would carry them both to the Moon." caption="The configuration of the LRO and LCROSS spacecraft inside the Atlas rocket that would carry them both to the Moon." %}
{% endcomment %}

<a href="{{ imgpath }}/lro_lcross_atlas.jpg">
![image-center]({{ imgpath }}/lro_lcross_atlas.jpg){: .align-center }</a>
<figcaption>The configuration of the LRO and LCROSS spacecraft inside the Atlas rocket that would carry them both to the Moon.</figcaption>

When they finally launched in 2009, both LCROSS and LRO were massive successes: LCROSS [detected direct evidence of water in the plume from Cabeus crater](https://doi.org/10.1126/science.1186986) using UV, visible, and NIR spectorgraphs, and [LRO's ultraviolet spectrograph](https://doi.org/10.1126/science.1186474) also confirmed the presence of water and other volatiles in the plume. LRO then went on to complete a very successful one-year mapping mission, followed by another year-long primary science mission---so successful that the spacecraft's operations have been extended five times since, leading to its present operations around the Moon to this very day.

Which brings us back to the conference. In 2008, the NLSI's Lunar Science Forum was a brand-new meeting filled with the excitement of dozens of scientists aware that the current plan for human exploration represented a bold promise of a return to the Moon in the near future. The fact that LRO and LCROSS were already being built and would soon undergo testing before launch was also a promising sign. This was not just long, boring report or line item in a budget request; there was now real metal and hardware behind Bush's words. This is also where Western enters the picture: as part of the creation of the NLSI, NASA solicited the participation of international affiliates, of which [three initially signed on](https://www.nasa.gov/pdf/399924main_09-10_NLSI_NAC_Morrison_10-29.pdf): Korea, led by PI Im Yong-Taek; the UK, led by PI Mahesh Anand; and Canada, led by Western's own Gordon Osinski. While I was not yet part of the lunar research community at the time, the stories that many of the veteran scientists present at this year's NESF told deftly communicated the excited anticipation they all felt.

But then, Obama was elected. While this was a fantastic development for the US in many, many ways, one in which it was not was his review of the Bush-era human space exploration program, known popularly as the [Augustine Committee](https://en.wikipedia.org/wiki/Review_of_United_States_Human_Space_Flight_Plans_Committee). The Committee found that the Constellation program was already running significantly over its currently-allotted budget, and that it could not demonstrate the technical feasibility of a return to the Moon within the originally-proposed timeline and $230 _billion_ (with a b!) budget constraints. And so, although the first bold steps had been taken with robotic precursors, the rest of Constellation was axed. However, this was not to be the end of US human spaceflight: although the Space Shuttle would be retired in 2011, Obama had plans to bring down the cost of trips to the ISS and low-Earth orbit by involving the commercial industry. His plans were to first create a thriving economy of cost-competitive, capable private LEO transports, in order to free up NASA to focus on bigger---and much more difficult---aspirations.

The rest of this story is a complicated one of Congressional infighting and Senators trying to save what they could of Constellation to benefit their own polities, and would take much longer than a short blog post to fully elucidate all the details and shady back-door deals. But the upshot is the announcements you've probably heard of in the news: the start of the Artemis program, which will bring humans back to the lunar surface before the end of the decade. When this was first announced under the Trump administration, I was skeptical it would amount to much, and I'm sure the people who lived through Constellation were even more so. But I think this changed in the minds of the entire world on November 16 of last year:

{% comment %}
{% include figure image_path="/assets/images/23-07-26/Artemis-1.jpg" alt="" caption="" %}
{% endcomment %}

<a href="{{ imgpath }}/Artemis-1.jpg">
![image-center]({{ imgpath }}/Artemis-1.jpg){: .align-center }</a>
<figcaption></figcaption>

Under the Obama administration, the scope of the NLSI was broadened to encompass other potential targets for human exploration, and thus it was renamed the Solar System Exploration Research Virtual Institute. Accordingly, the Lunar Science Forum also had a change of identity, becoming the first [NASA Exploration Science Forum in 2014](https://web.archive.org/web/20140802202511/http://sservi.nasa.gov/NESF2014/). 


There are many strange quirks of government-operated agencies, and NASA is no exception to this. One of the most confusing is that, despite the common emphasis on "NASA discovers this" and "NASA scientist says that" and "NASA sends astronaut to ISS" etc., these tasks are actually carried out by sections of the agency that largely have almost nothing to do with each other. The primary one that most people are probably familiar with in terms of the probes and landers launched to other planets, the satellites that monitor the Earth, and the space telescopes that peer out deep into the cosmos is the [Science Mission Directorate (SMD)](https://science.nasa.gov/), which oversees all . However, there are actually four other Mission Directorates under NASA's purview: [Aeronautics Research](https://www.nasa.gov/aeroresearch), [Space Technology](http://www.nasa.gov/directorates/spacetech/home/index.html), [Space Operations](https://www.nasa.gov/directorates/space-operations-mission-directorate), and [Exploration Systems Development](https://www.nasa.gov/directorates/exploration-systems-development). It was the intention of the NLSF and, later, the SSERVI ESF to bridge the gap between Science and Exploration, in order to leverage the full advantage of the decades of multi-institutional scientific analysis of the Moon to help set the stage for where and how to send humans to explore it.


