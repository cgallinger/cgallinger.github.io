---
title: "Eight Years in One Post"
date: 2025-03-25T09:00:00-04:00
published: false
hidden: true
related: false
comments: true
categories:
  - blog
tags:
  - other
carousels:
  - images: 
    - image: /assets/images/2025-03-26-eight-years-in-one-post/carousel/Donner_M_thermal1d_leastsq_trf_unweighted_Emilyalbedo_dozier2021horizons_sldemlev14_pfoot100_tylergroundflux_dozierland_daynightfit_A01059405_adjustlvf_Honly0.060_rhod1810H0.1RA0.007_thresh_98stretch_contour.png
    - image: /assets/images/2025-03-26-eight-years-in-one-post/carousel/Glushko_thermal1d_leastsq_trf_unweighted_Emilyalbedo_dozier2021horizons_sldemlev14_pfoot100_tylergroundflux_dozierland_A01059405_graham_Tdiffint_Honly0.038_rhod1810H0.1RA0.007_thresh_98stretch_contour.png
    - image: /assets/images/2025-03-26-eight-years-in-one-post/carousel/Korolev_Z_thermal1d_leastsq_trf_unweighted_Emilyalbedo_dozier2021horizons_sldemlev14_pfoot100_tylergroundflux_dozierland_daynightfit_A01059405_adjustlvf_Honly0.035_rhod1810H0.1RA0.007_thresh_98stretch_contour.png
    - image: /assets/images/2025-03-26-eight-years-in-one-post/carousel/Lowell_H_thermal1d_leastsq_trf_unweighted_Emilyalbedo_dozier2021horizons_sldemlev14_pfoot100_tylergroundflux_dozierland_daynightfit_A01059405_adjustlvf_Honly0.026_rhod1810H0.1RA0.007_thresh_98stretch_contour.png
    - image: /assets/images/2025-03-26-eight-years-in-one-post/carousel/Messier_and_Messier_A_thermal1d_leastsq_trf_unweighted_Emilyalbedo_dozier2021horizons_sldemlev14_pfoot100_tylergroundflux_dozierland_A01059405_graham_Tdiffint_Honly0.050_rhod1820H0.2RA0.006_thresh_98stretch_contour.png
    - image: /assets/images/2025-03-26-eight-years-in-one-post/carousel/NE_rim_of_Gibbs_thermal1d_leastsq_trf_unweighted_Emilyalbedo_dozier2021horizons_sldemlev14_pfoot100_tylergroundflux_dozierland_daynightfit_A01059405_adjustlvf_Honly0.040_rhod1820H0.2RA0.006_thresh_98stretch_contour.png
    - image: /assets/images/2025-03-26-eight-years-in-one-post/carousel/Wargo_thermal1d_leastsq_trf_unweighted_Emilyalbedo_dozier2021horizons_sldemlev14_pfoot100_tylergroundflux_dozierland_A01059405_graham_Tdiffint_Honly0.035_rhod1810H0.1RA0.007_thresh_98stretch_contour.png
---

{% assign imgpath = site.url | append: "/assets/images/" | append:  page.path | replace: ".md","" | replace: "_posts/",""  %}

I'm (hypothetically) supposed to be near the end of this whole PhD saga, and given that I [recently got my first paper (finally) published](https://doi.org/10.3847/PSJ/ad84e3), perhaps it's high time to take stock of where things are at. You'll notice that, despite starting my PhD at Western in summer 2021, I've put _eight_ whole dang years in the title of this post---unfortunately, this is not a typo! The research I'm still working on is essentially a very extended version of work I [started in 2017](https://cailingallinger.medium.com/hello-world-b2ad230134f1) for my Masters at the University of Toronto, and yet only now is it starting to yield any tangible, completed results. So, to recap, let's start from the start:

## The Moon is a Place

Perhaps obvious, yes, but one of the primary reasons I've always been interested in planetary science is that, unlike in astrophysics or astronomy (even exoplanetology!), the worlds of our solar system are close enough that we've been able to visit many of them, at least with robotic emissaries. In my mind, there's no better example of this than our Moon: it hangs in the sky, shifting appearance night after night, revealing enigmatic details on its surface like a faded and sun-bleached map. It's a visceral demonstration that the Earth is not alone in having a solid, traversable surface, and a little over 50 years ago we made the first forays out into the inky blackness to see for ourselves just what that surface is like. Of course, the "mare" of 17th-century astronomers, shifting seas in this most distant land, turned out to be barren, lifeless plains of ancient lava, cooled and pulverized by aeons of meteorite impacts with no atmosphere to stop them. But to me, that in no way makes it less interesting; on the contrary, the decidedly alien nature of the lunar surface (as with many terrestrial bodies throughout the solar system) makes it all the more mysterious and fascinating from a scientific perspective.

<figure class="half">
    <a href="{{ imgpath }}/1_UkZc6ZpNHzP0sEI43rwdbQ.jpeg" title=""><img src="{{ imgpath }}/1_UkZc6ZpNHzP0sEI43rwdbQ.jpeg" alt=""></a>
    <a href="{{ imgpath }}/00MOON-ART7-superJumbo.jpg" title="Credit: Zala Films"><img src="{{ imgpath }}/00MOON-ART7-superJumbo.jpg" alt=""></a>
</figure>

With that somewhat-grandiloquent preface out of the way, let's get to the feature around which my work has centered these past eight years: impact craters. Although down on Earth we do occasionally get whacked by rocks from space (see _T. rex_ et al., -66,000,000), for the most part these are either [burned up in our atmosphere]() or, in the rare case they're large enough to make it to the surface, are quickly eroded by the wind, water, and geologic activity that makes our planet such a comfortable place to live. We know, however, that this largely tranquil and idyllic environment must have been far harsher and more hellish for the first billion years or so after the Earth formed. How, you ask? Well, it's simple: look up.

<a href="{{ imgpath }}/5124_med.jpg">
![image-center]({{ imgpath }}/5124_med.jpg){: .align-center}
</a>
<figcaption>The Moon, feat. whooooooole lotta craters</figcaption>

<a href="{{ imgpath }}/content_M1258193408_LRmos.warp.str01.crop1100pixel.png">
![image-center]({{ imgpath }}/content_M1258193408_LRmos.warp.str01.crop1100pixel.png){: .align-center}
</a>
<figcaption>A single crater!</figcaption>

The fact that the lunar surface is so heavily pockmarked is a direct testament to the haggard state all the bodies of the solar system were in after the end stages of planetary formation, when the remaining dust, pebbles, boulders, and chunks of rock up to and exceeding the size of the Moon itself were being flung either out of the solar system entirely or else directly into other chunks by the new neighbourhood bully: Jupiter. Down on Earth, we've lost much of the surface rock that recorded this cataclysmic history, but the Moon---at just one quarter the size and only 1.2% the mass of its parent planet---has had no such trauma recovery. Instead, impacts from the microscopic to the continental simply accumulate on top of one another with time, each one obliterating the mixed-up rock and dust produced from those previous, and leading the entire surface to be covered in a layer of fine, powdery material known as _**regolith**_. It's this material that therefore records almost everything we could hope to know about the Earth's infant days, and so understanding how impact processes have shaped the Moon thus could provide us great insight into the missing early chapters of the Book of Life.

<a href="{{ imgpath }}/apollo11-buzz-aldrin-foot.jpg">
![image-center]({{ imgpath }}/apollo11-buzz-aldrin-foot.jpg){: .align-center}
</a>


## Impactful Research

While at first glance, the process of a hypervelocity<span class="ref"><span class="refnum">[1]</span><span class="refbody">For reasons, planetary scientists usually refer to impacts of distant objects travelling quickly from space as "hypervelocity" impacts, in the sense that \_\_\_\_\_\_</span></span> impact seems simple---solid thing moving very fast smacks into other solid thing, breaks up surface, throws chunks everywhere---there are a number of nuances.


<a href="{{ imgpath }}/Osinski2011-fig7.jpg">
![image-center]({{ imgpath }}/Osinski2011-fig7.jpg){: .align-center .width-threequarter}
</a>


<a href="/assets/images/2025-01-22-processing-LROC-NAC-oblique-images/M1244743082_combined_stretched_shrunk.png">
![image-center](/assets/images/2025-01-22-processing-LROC-NAC-oblique-images/M1244743082_combined_stretched_shrunk.png){: .align-center}
</a>
<figcaption></figcaption>


## Eyes in the Sky

So now we come to the crux of my particular facet of this research: how do we understand the properties (e.g., amount of melting, bulk density of ejecta, volume of excavated material vs. crater interior, etc.) of these craters, without actually visiting them? Well, fortunately, in some cases we _have_ visited them, which can provide us some boots-on-the-ground information in very limited areas (more on this later). But primarily, we can make use of the amazing properties of the interaction between matter and electromagnetic radiation to learn quite a bit, without so much as a single aluminum strut touching down.

By this of course, I mean we can use various wavelengths of light to infer many of the properties we're interested in, through a combination of modelling and ground experiments to better understand these matter-light interactions. In my case, I'm primarily interested in understanding the _physical_ properties of the ejecta materials that lie just beneath the surface, and for this the wavelenth range from the thermal infrared (~3-1000 μm) out into the microwave and radio portion of the spectrum is particularly useful.While at shorter wavelengths the radiation has a similar spatial scale to atoms, molecules, and the bonds between them, and thus is heavily influenced by the _chemical_ and _compositional_ properties of the material, at the thermal infrared range the individual quantum-mechanical particles of which it is composed start to be fuzzy and blend together, and we instead become sensitive to bulk quantities, as if the material were a continuous, homogeneous medium.

Even more intriguingly, at these wavelengths the stored thermal energy of the Sun hitting the Moon's surface is enough for it to significantly radiate out into space, rather than being primarily reflected as seen at shorter wavelengths. This means that we see not only the outermost surface of the Moon as resembling a homogeneous medium, but we also start to get some indication of how this medium changes with _depth_ as the radiation conducts up from deeper and deeper before being emitted out. This, combined with _active_ imaging (i.e., sending a beam of radiation at the Moon and watching how it bounces back, rather than relying on the Sun as the source of probing radiation), allows some remarkable insight into features that would otherwise be undetectable by camera or human eye alone.

<a href="/assets/images/2024-06-20-research-recap/thermal_inertia_example.jpg">
![image-center](/assets/images/2024-06-20-research-recap/thermal_inertia_example.jpg){: .align-center}
</a>

The two tools I primarily use in this investigation are the [Diviner Lunar Radiometer Experiment](https://www.diviner.ucla.edu/) (Diviner) and the [Miniature Radio Frequency](https://science.nasa.gov/mission/lro/mini-rf/) (Mini-RF) instruments onboard the _Lunar Reconnaissance Orbiter_ a venerable spacecraft that is only a few months away from its 16th(!!) year in operation orbiting the Moon. Diviner is a kind of thermal camera, able to sense temperatures from the scorching +120°C in the middle of the day, all the way down to just tens of kelvin above absolute zero (-273°C) during the long lunar night.

<a href="{{ imgpath }}/LRO_instruments_schematic_labelled.jpg">
![image-center]({{ imgpath }}/LRO_instruments_schematic_labelled.jpg){: .align-center}
</a>
<figcaption>Schematic diagram of LRO with its instruments labelled, including the barrel-shaped Diviner and the antenna for the Mini-RF instrument.</figcaption>

<a href="/assets/images/2024-06-20-research-recap/LRO_scan.jpg">
![image-center](/assets/images/2024-06-20-research-recap/LRO_scan.jpg){: .align-center}
</a>
<figcaption>Diviner (left) and Mini-RF (right), seen on mounted on the body of the LRO spacecraft</figcaption>

Diviner is a pushbroom camera, meaning that it contains essentially a single row of pixels that span across its FOV, and it then builds up a 2D image by scanning across the surface using the motion of the LRO spacecraft. 

Mini-RF, on the other hand, is a synthetic aperture radar, in some ways a decidedly more complicated beast. The basic concept of radar, going back to WWII, is to send out a pulse of radio waves and wait for them to bounce off objects and be returned to a receiving antenna. The distance to the objects is then proportional to the time it takes for that signal to return. However, this only gets us a single axis; how do we build up an image using this?

The answer is to take advantage of another quirk of electromagnetic radiation (and indeed all wave phenomena): the Doppler effect. If an object is moving while emitting or reflecting waves, they will be either compressed to shorter wavelengths if the object is moving towards the observer, or lengthening if the object it moving away from the observer.

<a href="https://www.mdpi.com/remotesensing/remotesensing-15-02705/article_deploy/html/images/remotesensing-15-02705-g001.png">
![image-center](https://www.mdpi.com/remotesensing/remotesensing-15-02705/article_deploy/html/images/remotesensing-15-02705-g001.png){: .align-center .width-threequarter}
</a>


## A Model Investigation

Using the thermal infrared data and making some assumptions about the depth dependence of thermophysical properties, we can solve the heat equation for different values of variables controlling them. Fitting the models to that data for each pixel over the ejecta, we can produce maps of the resulting pairs of variables by assigning them to two channels of an RGB image (with the third filled in by the difference in model temperature from early to late night):

<a href="/assets/images/2024-06-20-research-recap/Tharp_sldemlev14_98stretch_temps_depthprofiles_closeups_nomap4_biggerimgs.jpg">
![image-center](/assets/images/2024-06-20-research-recap/Tharp_sldemlev14_98stretch_temps_depthprofiles_closeups_nomap4_biggerimgs.jpg){: .align-center}
</a>

<a href="/assets/images/2024-06-20-research-recap/Tharp_channel_components_and_composite_v3_withlegend.jpg">
![image-center](/assets/images/2024-06-20-research-recap/Tharp_channel_components_and_composite_v3_withlegend.jpg){: .align-center .width-threequarter}
</a>

Additionally, in my paper I compared the variation in properties found from my thermal modelling to previous geologic maps that had been made based only on high-resolution images, and found some extremely pleasing correlations:

<a href="{{ imgpath }}/GB_compare_Lev2021_fig5_Diviner_RGB_withlegend_v5.jpg">
![image-center]({{ imgpath }}/GB_compare_Lev2021_fig5_Diviner_RGB_withlegend_v5.jpg){: .align-center}
</a>

And because I'm very proud of them, here are a few more maps I've made of various lunar craters:

{% include carousel.html height="600" unit="px" %}

The ultimate goal is to use these maps over a much larger sample of craters (~50) to understand how ejecta with different physical properties evolve over time; for example, comparing how solid impact melt flows vs. clastic ejecta break down due to impact gardening. An attempt at this was present in the first draft of [my 2024 paper](https://doi.org/10.3847/PSJ/ad84e3) (which ran over 50 pages long...):

<a href="{{ imgpath }}/young_craters_melt_vs_ejecta_compare_Hthresh0.30_nobrdfde_noaristarchus.png">
![image-center]({{ imgpath }}/young_craters_melt_vs_ejecta_compare_Hthresh0.30_nobrdfde_noaristarchus.png){: .align-center}
</a>

However, there are some issues with this plot, that will hopefully be resolved and published in a follow-on paper to the first one.

Finally, in my paper I compared some of the thermal infrared data to radar data (I swear I do work with radar data in the radar lab!):

<a href="{{ imgpath }}/Donner_M_Radar_RGB_TId_overview_zoom_v2.jpg">
![image-center]({{ imgpath }}/Donner_M_Radar_RGB_TId_overview_zoom_v2.jpg){: .align-center}
</a>

<a href="{{ imgpath }}/Messier_and_Messier_A_Radar_Diviner_RGB_RA_v3.jpg">
![image-center]({{ imgpath }}/Messier_and_Messier_A_Radar_Diviner_RGB_RA_v3.jpg){: .align-center}
</a>

## Diving into the past

My final project involves examining archival data from the Surveyor 7 spacecraft, a probe that was part of the earliest wave of robotic explorers of the Moon which touched down on the north ejecta blanket of the bright young lunar crater Tycho:

<a href="{{ imgpath }}/Surveyor7_context_map_v6.png">
![image-center]({{ imgpath }}/Surveyor7_context_map_v6.png){: .align-center .width-threequarter}
</a>

<a href="{{ imgpath }}/Surveyor_7_diagram_inverted.jpg">
![image-center]({{ imgpath }}/Surveyor_7_diagram_inverted.jpg){: .align-center}
</a>

The first thing I did was map the Surveyor 7 site using modern spacecraft data, comparing that to the geologic units that had been mapped in the 1960s:

Next, I used newly-digitized data from Surveyor 7's television camera to measure the sizes of rocks surrounding the spacecraft. This is useful because surface images can resolve features much smaller than any we could observe from orbit;

<a href="{{ imgpath }}/Surveyor7combined_cropshrink.jpg">
![image-center]({{ imgpath }}/Surveyor7combined_cropshrink.jpg){: .align-center}
</a>

In addition to these projects that are _actually_ part of my thesis work, I've also been participating in some side projects for the Diviner/Mini-RF teams:

[EPF observations](http://127.0.0.1:4000/blog/what-the-EPF)



Till then,
-xoxo gossip grad ☾⋆⁺₊⋆







