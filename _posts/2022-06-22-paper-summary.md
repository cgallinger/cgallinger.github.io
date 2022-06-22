---
title: "Paper Summary"
date: 2022-06-22T09:00:00-04:00
published: true
categories:
  - blog
tags:
  - research
  - gradschool
---

Recently, I began a project to try to compare remote sensing data (multiple radar datasets with different wavelengths as well as thermal infrared from Diviner) to the ground-based data acquired by the only spacecraft to ever land on the ejecta blanket of a large Copernican (< 1 Ga old) crater: [Surveyor 7]( https://www.drewexmachina.com/2018/01/07/surveyor-7-the-mission-to-tycho/). This spacecraft landed on the northern edge of Tycho crater on January 10, 1968, the final of the robotic spacecraft sent to scout out the lunar surface prior to the Apollo landings. Surveyor 7 only contained three science instruments: the alpha-scatterer experiment, to get a crude estimate of local regolith elemental abundance; the soil mechanics and surface sampler, a crude pantograph-style robotic arm that could be extended and retracted to dig trenches to test the regolith's geotechnical properties (bulk density, coefficient of friction, yield strength, etc.); and a television camera system with a clear lens and two polarizing filters.

It was the last of these that became a potential avenue for new discoveries with this half-century-old dataset, after I stumbled upon the ongoing efforts of the [Surveyor Digitization Project](https://www.lpl.arizona.edu/sic/surveyor/background) which aims to scan the archival film copies of the more than **80,000** images taken during the Surveyor program. Several staff at the University of Arizona, as well as technicians with specialties in scanning film for archival purposes, have been working diligently since 2015 to turn these grains of film into bytes of data and translate all the metadata they were originally stored with in punch-card format.

Assisting them in this project is the venerable [Jay Rennilson](https://historycollection.jsc.nasa.gov/JSCHistoryPortal/history/oral_histories/NASA_HQ/Administrators/RennilsonJ/RennilsonJ_3-10-20.htm), one of the original(!) co-investigators of the Surveyor television camera system, who is well into his 90s. After emailing back and forth about the dataset and the specific images I was interested in examining, Jay mentioned his hope that someone would someday soon re-analyze the Surveyor data and send a spacecraft with similar capabilities and science goals to final solve the mystery of the "Lunar Horizon Glow". And so, today I'm going to talk about his 1974 paper on the subject, the last time anyone has analyzed ground-based data to understand the properties of this mysterious phenomenon. Without further ado:

## Surveyor Observations of the Lunar Horizon Glow (1974)
_J.J. Rennilson and D.R. Criswell_


{% include figure image_path="/assets/images/RennilsonCriswell1974-fig1a.png" alt="" caption="Figure 1a from Rennilson and Criswell (1974), showing a mosaic of the four horizon-glow images overlain on a late-afternoon three-image panorama of the western horizon seen from the spacecraft. S. D. stands for the position of the solar disk at maximum time of glow visible, and important objects in the scene include #7 and #12 (corresponding to two low hills overlapping one another from Surveyor 7's standpoint) as well as rocks #5 and #10." %}

The authors in this paper describe measurements of the lunar horizon glow, a phenomenon only observed by three of the robotic Surveyor probes which landed on various parts of the Moon between 1966-1968. This consisted of a very thin (~10-30 cm), low, horizontal band of light, visible just at or above nearby horizons in the subsolar direction for about 30 minutes to 2 hours after local sunset. The Surveyor probes were solar powered, but had batteries that allowed them to operate for some amount of time after sunset to conduct astronomical observations and observations of the lunar surface under Earthshine. The horizon glow was an unexpected additional phenomenon able to be observed due to this mode of operation.

The Surveyor 7 horizon glow is the best-measured of the three probes that saw it (Surveyors 5, 6, and 7, with hints that Surveyor 1 may have seen a similar effect). The horizon glow at this location (on the northern ejecta blanket of Tycho crater) was bright enough that the television camera could observe it in so-called “open” mode, where the photocathode tube that recorded the electronic signal was repeatedly scanned while the camera shutter was held opening, resulting in integration times of ~1.2 s. This was long enough to observe low-luminosity phenomena, while not so long as to cause the “smearing” effect seen in the much longer exposures (5 seconds to 200 minutes) taken in “integration” mode. The fact that the horizon glow still maintained a significant vertical and horizontal extent in open mode was cited as evidence that the horizon glow was a real extended source, rather than a blurred astronomical phenomenon. Additionally, the fact that the contour of the horizon glow conformed even to small local deviations in the horizon (e.g. rock 5 in fig. 1) was evidence that the phenomenon was not produced by some distant, ephemeral source stacked up over a large distance in western extent.

Many other measurements and data analyses (e.g., polarization, decay time, etc.) were performed to quantify and assess different possible explanations for the glow. The previously-mentioned points ruled out a vertically extensive source, in addition to the fact that the micrometeorite flux required to produce such an extended source is much greater than that observed. Additionally, the luminosity of the glow was low enough that it could not have been produced by an unresolved diffraction from a surface dust layer. (While a more extended, permanent, asymmetrical dust cloud _has_ been [observed by the LADEE spacecraft](https://www.nature.com/articles/nature14479), this cloud is far too tenuous to explain the near-surface horizon glow, but may be responsible for a different, larger glow seen by Apollo astronauts and the Clementine spacecraft from orbit around the Moon).

{% include figure image_path="/assets/images/Clementine-moon-glow.jpeg" alt="" caption="The more tenuous, extended glow seen by the Clementine spacecraft, caused by impacts of tiny cometary dust particles. (Note: _not_ the horizon glow!)" %}

The best explanation for the horizon glow put forward by the authors is an electrostatically-levitated curtain of tiny dust particles produced at the sharp boundaries between illumination and darkness that occur near sunset on the Moon’s airless surface. Their preliminary assessment of a model in which solar high-energy X-rays produce secondary electrons that escape and diffuse to dark areas suggests a voltage difference of 500-1500 V could be generated across these cm-scale boundaries, levitating the grains to heights of tens of cm. A forward-scattering model of large-sphere diffraction predicted that, for the solar phase angles at which the HG was observed (~3°), the average particle size would be on the order of 5-6 µm.

Over 40 years after this paper was published, and almost 50 years since the Surveyor 7 observations were initially acquired, a paper by [Wang et al. (2016)](https://agupubs.onlinelibrary.wiley.com/doi/full/10.1002/2016GL069491) experimentally demonstrated conclusively that particles up to several tens of microns could be levitated by electrostatic forces generated by solar radiation in an airless environment similar to that on the Moon.

<video width="720" height="480" controls="controls">
  <source src="/assets/images/Wang2016-vid1.mp4" type="video/mp4">
</video>


To date, no other landed spacecraft other than the Surveyors has directly measured this elusive and mysterious phenomenon, but this experimental evidence (and the model that explains it) adds significant weight to the resolution proposed by Rennilson and Criswell half a century ago. In a few years time, as robotic and human-crewed spacecraft equipped with far more advanced sensors are sent to continue humanity’s exploration of our planetary sibling, Rennilson told me he hopes he will finally get to witness the confirmation of decades of his persistent, meticulous, and pioneering work.

Till next time!
-xoxo gossip grad



