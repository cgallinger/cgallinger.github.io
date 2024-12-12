---
title: "Research Recap"
date: 2024-06-20T09:00:00-04:00
published: true
related: false
comments: true
categories:
  - blog
tags:
  - other
---
{% assign imgpath = site.url | append: "/assets/images/" | append:  page.path | replace: ".md","" | replace: "_posts/",""  %}

For today's blog post, here's a brief rundown of where my research is currently at:

I'm mainly interested in using thermal infrared and decimeter-wavelength radar to characterize the physical properties of large, young impact crater ejecta on the Moon. While there are many beautiful examples of impact craters on Earth from impact events in the distant past, the active processes of erosion and tectonics have caused most of these to become degraded to some degree. Ejecta blankets---the material thrown out of the crater's rim during an impact---are some of the first features to be erased from impact craters on Earth, and so studying impact ejecta deposition and aspects of the impact process is challenging here. The Moon, meanwhile, has no atmosphere and hasn't been significantly tectonically or volcanically active for billions of years; thus, it is a fantastic laboratory with which to study the process of impact cratering in detail.

{% comment %}
{% include figure image_path="/assets/images/24-06-20/LRO_scan.jpg" alt="" caption="A simulation of LRO orbiting the Moon over the crater Korolev Z, showing (left) Diviner and (right) Mini-RF." %}
{% endcomment %}
<a href="{{ imgpath }}/LRO_scan.jpg">
![image-center]({{ imgpath }}/LRO_scan.jpg){: .align-center}</a>
<figcaption>A simulation of LRO orbiting the Moon over the crater Korolev Z, showing (left) Diviner and (right) Mini-RF.</figcaption>

The data for my research comes mainly from two instruments onboard the Lunar Reconnaissance Orbiter (LRO): the [Diviner Lunar Radiometer Experiment](https://www.diviner.ucla.edu/) (Diviner) and the [Miniature Radio Frequency](https://science.nasa.gov/mission/lro/mini-rf/) (Mini-RF) radar. The former is a pushbroom mapping camera that scans the surface using an array of sensors with different filters on them, producing scans of thermal radiation emitted from the lunar surface in wavelength from 8-400 µm. The latter is a polarimetric synthetic aperture radar instrument, which generates images of the lunar surface by actively sending out a beam of radio waves towards it and measuring the signals that bounce back. The "polarimetric" part means that this transmitted radiation is polarized (left-hand circular in the case of Mini-RF), and so by measuring the polarization of the reflected radiation we can gain more information about the physical properties of the lunar surface.

{% comment %}
{% include figure image_path="/assets/images/24-06-20/thermal_inertia_example.jpg" alt="" caption="Examples of how physical properties, in this case thermal inertia, are expressed in a measurable property, in this case surface temperature." %}
{% endcomment %}
<a href="{{ imgpath }}/thermal_inertia_example.jpg">
![image-center]({{ imgpath }}/thermal_inertia_example.jpg){: .align-center}</a>
<figcaption>Examples of how physical properties, in this case thermal inertia, are expressed in a measurable property, in this case surface temperature.</figcaption>

My research combines the information from these two instruments, along with modelling of their expected values based on hypothesized sub-surface structures of the ejecta. For example, thermal inertia, which determines how materials absorb and release heat, can be determined by looking at nighttime temperatures of the surface over multiple local times, and watching how that surfaces cool off/releases heat.

<a href="{{ imgpath }}/Tharp_sldemlev14_98stretch_temps_depthprofiles_closeups_nomap4_biggerimgs.jpg">
![image-center]({{ imgpath }}/Tharp_sldemlev14_98stretch_temps_depthprofiles_closeups_nomap4_biggerimgs.jpg){: .align-center .width-threequarter}

<a href="{{ imgpath }}/Tharp_channel_components_and_composite_v3_withlegend.jpg">
![image-center]({{ imgpath }}/Tharp_channel_components_and_composite_v3_withlegend.jpg){: .align-center .width-threequarter}</a>
<figcaption>An example of the maps of an impact crater's ejecta I've made using thermal infrared data.</figcaption>

My upcoming project(s) will be attempting to ground-truth these remote sensing observations using archival image data from the Surveyor VII spacecraft, the only(!!) spacecraft (robotic or crewed) that's landed on the ejecta blanket of a large, young lunar crater. I'm hoping to update surface rock size-frequency distributions using newly scanned and digitized images, combined with high-resolution orbital stereo-derived DEMs.

<a href="{{ imgpath }}/Apollo12ConradSurveyor.jpg">
![image-center]({{ imgpath }}/Apollo12ConradSurveyor.jpg){: .align-center .width-threequarter}</a>
<figcaption>An image of Surveyor III on the surface next to Apollo 12 astronaut Pete Conrad.</figcaption>

<a href="{{ imgpath }}/Surveyor_7_diagram_inverted.jpg">
![image-center]({{ imgpath }}/Surveyor_7_diagram_inverted.jpg){: .align-center .width-threequarter}</a>
<figcaption>Diagram of Surveyor VII, showing its three instruments (Alpha Scattering instrument, Soil Mechanics and Surface Sampler, and Television Camera).</figcaption>

<a href="{{ imgpath }}/Surveyor7panorama_rock_measurement.jpg">
![image-center]({{ imgpath }}/Surveyor7combined_shrink.jpg){: .align-center}</a>
<figcaption>Panorama mosaic of the area around the Surveyor VII landing site, created using digitized, cleaned, and merged frames from the the television camera, with measurement lines for individual rocks drawn over in yellow.</figcaption>


