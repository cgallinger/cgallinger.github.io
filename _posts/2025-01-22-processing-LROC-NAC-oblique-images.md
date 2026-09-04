---
title: "Processing LROC NAC Oblique Images"
date: 2025-01-22T09:00:00-04:00
excerpt: "Rekindling love for my research by way of its subject's sublime beauty"
header:
  overlay_image: /assets/images/2025-01-22-processing-LROC-NAC-oblique-images/M1244743082_combined_stretched_shrunk.png
  overlay_filter: 0.5  # same as adding an opacity of 0.5 to a black background
  caption: "LROC NAC frame [M1244743082](https://wms.lroc.asu.edu/lroc/view_lroc/LRO-L-LROC-3-CDR-V1.0/M1244743082RC), showcasing a stunning high-phase-angle oblique view of Korolev Z"
published: true
related: false
use_math: true
mathjax: true
comments: true
categories:
  - blog
tags:
  - other
---

{% assign imgpath = site.url | append: "/assets/images/" | append:  page.path | replace: ".md","" | replace: "_posts/",""  %}

Over the past few years I've struggled on and off with my PhD work, sometimes hitting months-long stretches where I hardly get anything done at all and can barely stand to look at my computer. You might find this hard to believe, given how much I can babble on about my research whenever someone has the temerity to ask, but truth be told these last four years have been punctuated with some of the lowest points in my entire life. While the details of those abyssal episodes may eventually make it into another blog post, in this one I'd like to talk about a little self-care practice that's been an invaluable reminder of why I decided to pursue this work in the first place.

Everyone loves pictures from space---when the James Webb Space Telescope [released](https://www.nasa.gov/news-release/nasa-reveals-webb-telescopes-first-images-of-unseen-universe/) its first science images in July of 2022, the amount of social media attention was [overwhelming](https://jwst.nasa.gov/content/webbLaunchRewind/index.html). The venerable [Astronomy Picture of the Day](https://apod.nasa.gov/apod/), which has been posting every day since [1996](https://apod.nasa.gov/apod/ap950616.html)(!), 


Personally, this highly-oblique image of the surface of Europa, taken from the _Galileo_ orbiter in [1997](https://photojournal.jpl.nasa.gov/catalog/PIA01180), was one of the most influential in setting me down the path of studying planetary science:

<div class="img-cut">
      <a href="https://photojournal.jpl.nasa.gov/catalog/PIA01180"><img src="https://photojournal.jpl.nasa.gov/jpeg/PIA01180.jpg"></a>
</div>
<br>
The view at the center of this image is just under 2 km wide, meaning that the vertical topography is only 10s to 100s of meters high---gently rolling hills and valleys whizzing past the window on a cosmic cross-continental flight. You can almost imagine skiing or hiking this terrain, the faint Sun off to one side of the black, airless sky, and the greating, shining hulk of Jupiter in another. Images like these were some of the first times I felt like the moons and planets of our solar system were real _places_, physical locations that felt as tangible as the Scarborough Bluffs that I climbed in my youth. And it is the oblique perspective, replicating what you might see on a spaceship flying over these fantastic alien landscapes, that really brings them to life.

Of course, for most scientific work, these images are not ideal to work with. Scientists generally prefer views with a consistent scale throughout the two-dimensional image plane, as these are far easier to interpret and map-project onto other datasets to derive useful insights. But aside from their aesthetic value, oblique images can sometimes provide useful scientific information as well: pairs of such images taken from opposite vantage points can produce [very accurate](https://www.lroc.asu.edu/images/982) topographic suface maps through stereo processing, or quantitative data on how light [scatters off a surface](https://doi.org/10.1016/j.jqsrt.2012.03.020) in different directions. 

## LRO 

The Lunar Reconnaissance Orbiter's twin high-resolution Narrow-Angle Cameras (NAC) are an example of such nominally nadir-pointing cameras that are sometimes used for so-called "off-nadir" imaging. However, this isn't quite as simple as point-and-shoot photography like the Apollo astronauts acquired with their Hasselblads out the window of the Command Module---the NACs are "pushbroom" imagers, meaning that their sensors are very wide and high-resolution in the direction perpendicular to the spacecraft's nominal motion (the "cross-track" direction), but have only a few dozen rows of pixels in the in-track direction.

{::comment}
<figure class="half">
    <a href="{{ imgpath }}/Robinson2010-fig2.jpg" title="Fig. 2 of Robinson et al. (2010), showing the two LRO NAC cameras mounted on a lab bench, guts exposed"><img src="{{ imgpath }}/Robinson2010-fig2.jpg" alt=""></a>
    <a href="{{ imgpath }}/Robinson2010-fig3.png" title="Fig. 3 of Robinson et al. (2010), showing a diagram of how the two NAC CCDs are arranged. Each camera sensor is 5038 pixels wide but only 42 pixels deep, with an overlap between left and right focal planes of approximately 135 pixels"><img src="{{ imgpath }}/Robinson2010-fig3.png" alt=""></a>
    <figcaption>Figures 2 and 3 from <a href="https://doi.org/10.1007/s11214-010-9634-2">Robinson et al. (2010)</a>, showing (left) the two NAC cameras mounted on a lab benchtop for calibration, and (right) the configuration of their CCDs at the telescope focal planes, demonstrating the very wide and thin sensors used for "pushbroom" imaging.</figcaption>
</figure>
{:/comment}

<figure style="text-align:center">
    <a href="{{ imgpath }}/WuLiu2017-fig1.jpg" title="Fig. 1 of Wu and Liu (2017), showing (a) a model of the two LROC NAC cameras as they appear mounted on the spacecraft, and (b) the arrangement of their CCDs in image space"><img src="{{ imgpath }}/WuLiu2017-fig1.jpg" alt=""></a>
    <figcaption>Figure 1 from <a href="https://doi.org/10.1016/j.isprsjprs.2017.04.012">Wu and Liu (2017)</a>, showing (a) a 3D model of the two co-boresighted LROC NAC cameras, and (b) the layout of their linear CCDs in the image plane.</figcaption>
</figure>

Because LRO orbits at close to a constant velocity, this configuration is ideal for collecting long strips of data when the cameras are pointed straight downward, achieving very high resolutions (down to [<30 cm/pixel](https://www.lroc.asu.edu/images/1198)!) while still covering a significant portion of the surface.

A second issue is that the NAC cameras are bolted onto the body of LRO in a fixed orientation, meaning that in order to take an oblique image, the entire spacecraft must roll over onto its side---this, of course, requires the use of either [reaction wheels]() or small [thrusters]() to achieve reorientation, both of which have a limited lifespan due to either mechanical failure or fuel exhaustion.<span class="ref"><span class="refnum">[1]</span><span class="refbody">In fact, in 2018 one of the instruments used to control LRO's orientation---the intertial measurement unit (IMU)---was [powered off](https://www.nasa.gov/missions/lro-mission-status-report/) due to degradation from the space radiation environment, leaving it with only the star-tracking cameras for geometric orientation. This would have severely limited the ability of the spacecraft to perform off-nadir slews, as the cameras must be unocculted by the Earth, Moon, or Sun (including sunlight glare) in order to accurately determine LRO's position. Fortunately, [a new algorithm](https://www.nasa.gov/missions/teaching-an-old-spacecraft-new-tricks-to-continue-exploring-the-moon/) that automatically calculates a slew path to avoid any of these obstacles has brought the spacecraft back to full performance, and with current fuel estimates LRO will probably be operational to the end of the 2020s and possibly even into the 2030s.</span></span>

With these caveats in mind, it's no wonder that there are [relatively few](https://www.lroc.asu.edu/image_tags/Oblique) oblique images released on the LROC website. However, when digging through the raw NAC archives to generate the image mosaic for Korolev Z in my recent paper, I accidentally stumbled upon [an oblique view](https://wms.lroc.asu.edu/lroc/view_lroc/LRO-L-LROC-3-CDR-V1.0/M1244743082RC) I had never seen before:

<a href="{{ imgpath }}/M1244743082_combined_stretched_shrunk.png">
![]({{ imgpath }}/M1244743082_combined_stretched_shrunk.png)
</a>

The version uploaded here is 3x-downsampled, but at full resolution the amount of detail is incredible: individual boulders sticking up out of the impressive impact melt flow that spilled over into Korolev X are visible, back-lit by the Sun in this extremely high-phase (~114°) image. What does this mean? A diagram may help clarify things:

<figure style="text-align:center">
    <a href="{{ imgpath }}/Shkuratov2011-fig1-modified-surfacefilled.png" title=""><img src="{{ imgpath }}/Shkuratov2011-fig1-modified-surfacefilled.png" alt=""></a>
</figure>

Planetary observations can be described by several geometric parameters relating the relative positions of the spacecraft, illumination source, and the surface under observation using polar coordinates. The angle from the <u>normal</u> of the surface<span class="ref"><span class="refnum">[2]</span><span class="refbody">the vector perpendicular to the local "flat" tangent plane, equivalent to the $z$-axis in the above diagram</span></span> to the illumination source is called the <i><u>incidence angle</u></i> ($i$); similarly, the angle from the surface normal to the observing spacecraft is called the <i><u>emission angle</u></i> ($e$). The angle between the incidence and emission angles can be described in two ways: either the <i><u>azimuth angle</u></i> around the pole of the surface normal ($\phi$), or simply the direct angle in 3D space---this is what is known as the <i><u>phase angle</u></i> ($g$).<span class="ref"><span class="refnum">[3]</span><span class="refbody">In radar/radio astronomy, this is also known as the <i><u>bistatic angle</u></i>, because of course radio scientists just _have_ to be different and special 🙄</span></span><span class="ref"><span class="refnum">[4]</span><span class="refbody">Okay okay fine it actually _is_ for a good reason: the term "phase" as used to describe the spatial alignment in the peaks and troughs of electromagnetic waves is a much more important concept in radar systems than most other ranges of the EM spectrum, since here the wavelengths are large enough that relative phases between transmitted and reflected waves are significant and can usually be directly measured by the radar system. This leads directly to the concept of [_radar polarimetry_](https://natural-resources.canada.ca/maps-tools-publications/satellite-elevation-air-photos/basics-sar-polarimetry), which provides a substantial amount of information about the physical properties of the target(s) under observation.</span></span>

This helps explain why high-phase images are both beautiful and rare in planetary imagery: they create that ethereal, otherwordly "backlit" effect on the surfaces or atmospheres viewed from these angles, but they also present a significant danger in that they can fry the sensors of spacecraft instruments if these were not designed to directly view the Sun.<span class="ref"><span class="refnum">[5]</span><span class="refbody">A famous example of this was the accidental Sun-viewing that [fried the television camera](https://youtu.be/fNwbjvhVQJU?t=46) on Apollo 12, a mistake which astronaut Alan Bean [reflected on with some embarrassment](https://www.nasa.gov/history/alsj/a12/a12.tvtrbls.html#:~:text=%5BBean%20%2D%20%22I%20went,burned%20it%20out.) several years later.</span></span>

## Typical NAC Processing

In generating the dozens of image mosaics of the various craters used in my research, I've now developed quite a streamlined pipeline for going from raw NAC data to finished map-projected products. Here's a general overview of my process:

  1. Find LROC NAC frames covering the target area by creating a box in [Quickmap](https://quickmap.lroc.asu.edu/query?prjExtent=2528780.8832201%2C-562735.0443189%2C2640900.1989617%2C-505876.8158232&queryFeature=0&queryOpts=N4IgLghgRiBcIAcBOB7AJgVwMZgM4gBpFVMcBJNOELFAcwDsIsBGANhAF8g&features=84.92353100%2C-17.24720500%2C85.48793700%2C-17.24389300%2C85.48705200%2C-17.72045700%2C84.93227500%2C-17.72439700%2C84.92353100%2C-17.24720500%40%40%7B%22selected%22%3Atrue%7D&layers=NrBsFYBoAZIRnpEBmZcAsjYIHYFcAbAyAbwF8BdC0yioA&proj=16) and searching for NAC products (optional: constrain by observation angle, including by emission angle if you want to find oblique images)
  2. Download the raw [EDR frames](https://wms.lroc.asu.edu/lroc/view_lroc/LRO-L-LROC-3-CDR-V1.0/M1307812572RC) from the LROC website (from both the left and right camera)
  3. Use the USGS's [ISIS](https://github.com/DOI-USGS/ISIS3) software to prepare, calibrate, and map-project the frames onto a [shape model](https://astrogeology.usgs.gov/search/map/moon_lro_lola_selene_kaguya_tc_dem_merge_60n60s_59m) of the Moon<span class="ref"><span class="refnum">[6]</span><span class="refbody">Note that this file provides elevations relative to the lunar reference radius (1737.4 km); to use this as a shapefile in ISIS you will need to first [convert it to use absolute radius values](https://isis.astrogeology.usgs.gov/8.1.0/Application/presentation/PrinterFriendly/demprep/demprep.html)</span></span>
  
I've made available [here](/assets/files/process_nacs.sh) a bash script that will execute the ISIS commands for all the image data in the folder where it's run (note that you first need to have a working copy of ISIS installed). Let's step through these commands one by one and see what they're doing:

```bash
for i in *.IMG; do

    lev0file="${i/.IMG/_lev0.cub}"
```

This loops through every raw .IMG binary file in the current folder, creating a new file with the name `[old_file_name]_lev0.cub`.<span class="ref"><span class="refnum">[7]</span><span class="refbody">Note that this is how all the subsequent files are renamed, so I'll leave out this step in the following descriptions.</span></span> Next we actually get to the ISIS processing steps:

```bash
    lronac2isis from="$i" to="$lev0file"
    spiceinit from="$lev0file" web=yes shape=user model=/Volumes/Kepler/dems/Lunar_LRO_LOLAKaguya_DEMmerge/Lunar_LRO_LOLAKaguya_DEMmerge_60N60S_512ppd_radius.cub
```

These are two of the most important commands; <code><a href="https://isis.astrogeology.usgs.gov/8.3.0/Application/presentation/Tabbed/lronac2isis/lronac2isis.html">lronac2isis</a></code> ingests the binary file and converts it into the "cube" format used in ISIS. <code><a href="https://isis.astrogeology.usgs.gov/8.3.0/Application/presentation/Tabbed/spiceinit/spiceinit.html">spiceinit</a></code> then takes this file and attaches the relevant [SPICE](https://astrogeology.usgs.gov/docs/concepts/spice/spice-overview/) information, which consists of tables of navigation, timing, and instrument calibration data that are used for proper camera modelling and instrument geometry/photometry processing. This is also where information about the planetary body the instrument is targeting is added, which is why I referenced a user-defined shape model in this step.

```bash
    lronaccal from="$lev0file" to="$lev1file"
    lronacecho from="$lev1file" to="$lev1echofile"
```

These two commands apply NAC-specific photometric and instrument corrections.

```bash
    cam2map from="$lev1echofile" to="$lev2file" map=MoonEquirectangular180.map pixres=map
```

This is where the majority of the heavy lifting is done. <code><a href="https://isis.astrogeology.usgs.gov/8.3.0/Application/presentation/Tabbed/cam2map/cam2map.html">cam2map</a></code> uses a model of the LROC NAC cameras plus the attached SPICE information to project the original rectangular array of pixels onto the surface model. In most cases with nadir-pointing geometry, this won't result in noticeable distortion of the image, but the resulting output file will now have pixel locations that correspond to accurate latitude-longitude coordinates on the surface.<span class="ref"><span class="refnum">[8]</span><span class="refbody">Well, _relatively_ accurate, anyway---there are usually slight variations between the modelled and real pointing of the camera, due to a combination of factors (unaccounted-for thermal expansion, imperfect SPICE data, etc.). The proper way to correct for this is to [register](https://astrogeology.usgs.gov/docs/concepts/control-networks/multi-instrument-registration/) the image to some known datum such as a global DEM, and then (for mosaics) use [bundle adjustment](https://astrogeology.usgs.gov/docs/how-to-guides/image-processing/bundle-adjustment-in-isis/) to co-register a set of images with overlapping regions. See [this LPSC abstract](https://www.hou.usra.edu/meetings/lpsc2014/pdf/2885.pdf) (warning: PDF) for a high-level discussion and an example of the improvements achieved with these techniques.</span></span>


## Oblique Tweaks

Here's where the fun begins.

Unfortunately, the process for producing oblique images is not quite as easy to automate. The initial steps are largely the same as normal nadir processing, but instead of projecting the images onto a DEM surface,<span class="ref"><span class="refnum">[9]</span><span class="refbody">Thus "mappifying" them in a way that would attempt to rubber-sheet them over the surface; for an example of what that would look like, click [here]()</span></span> we want to simply align the left and right images in camera-plane space to produce a full, rectangular view of our target. 


After producing the calibrated Level 1 frames, we can use the ISIS command <code><a href="https://isis.astrogeology.usgs.gov/8.3.0/Application/presentation/Tabbed/qview/qview.html">qview</a></code> to view them. This launches a graphical interface from which you can open the two files and place them side-by-side.

<figure style="text-align:center">
    <a href="{{ imgpath }}/M1386796829LR_qview.png" title=""><img src="{{ imgpath }}/M1386796829LR_qview.png" alt=""></a>
</figure>

Our next task is to identify a matching feature in each of the left and right frames, which we will use to align them. While the L/R cameras are fixed in place and theoretically should always have the same orientation relative to one another, temperature changes in the spacecraft and the cameras themselves can cause them to slightly shift, so unfortunately a single offset value (as implied in the Wu and Liu (2017) figure above) won't work for all images. In this case, I zoomed in on a region near the top of each image and found a bright crater with relatively sharply-defined features:

<figure style="text-align:center">
    <a href="{{ imgpath }}/M1386796829LR_qview_zoom_labelled.png" title=""><img src="{{ imgpath }}/M1386796829LR_qview_zoom_labelled.png" alt=""></a>
</figure>

The contrast stretch of the images can be adjusted using the top toolbar (<span style="color:magenta">magenta outline</span>) to make it easier to identify corresponding pixels (<span style="color:red">red pluses</span> indicating mouse position; note that the window for each image needs to be clicked on/active to display the correct pixel coordinates):

<figure style="text-align:center">
    <a href="{{ imgpath }}/M1386796829LR_qview_match1_linesample_labelled.png" title=""><img src="{{ imgpath }}/M1386796829LR_qview_match1_linesample_labelled.png" alt=""></a>
</figure>

<figure style="text-align:center">
    <a href="{{ imgpath }}/M1386796829LR_qview_match2_linesample_labelled.png" title=""><img src="{{ imgpath }}/M1386796829LR_qview_match2_linesample_labelled.png" alt=""></a>
</figure>

Note down the sample/line numbers of the corresponding pixels for each image (highlighted in red boxes at the bottom). We can then use these pixel positions to get the offset between the two images, simply by subtracting. In this case, the sample offset is 5005 − 124 = 4882, and the line offset is 4689 - 4138 = 551.

Next, we need to create the mosaic that will contain our two frames. To ensure we don't cut off any part of the image, we will make its width equal to 2× an individual NAC frame, or 10128 pixels. For the height, we will use the length of a single NAC image (52224 pixels).<span class="ref"><span class="refnum">[10]</span><span class="refbody">Although the two frames will have a vertical offset and thus their correctly-arranged height will be greater than one frame, the most they can possibly overlap is a single frame height, so we're safe using this value.</span></span> The syntax for this step is:

```bash
handmos from=M1386796829L_lev1.echo.cub mosaic=M1386796829LR.cub create=yes nlines=52224 nsamples=10128 nbands=1
```

Note that we use the `create=yes` keyword in this step to construct the image and place the left frame in it at the same time. Next, we use the offsets we obtained above to place the right frame:

```bash
handmos from=M1386796829R_lev1.echo.cub mosaic=M1386796829LR.cub outsample=4882 outline=551 
```

This is where a particular quirk of the LRO spacecraft can rear its head: twice an (Earth) year, LRO performs a "yaw flip" maneuver to keep its single side-mounted solar panel correctly oriented towards the Sun. This is in fact a common procedure for Sun-synchronous satellites, as demonstrated in this animation of the NASA/CNES Jason-2 satellite:
{% include video id="AZ225CGe4fY?start=52" provider="youtube" %}

<figure style="text-align:center">
    <a href="{{ imgpath }}/LRO_Mesarch2023.png" title=""><img src="{{ imgpath }}/LRO_Mesarch2023.png" alt=""></a>
    <figcaption>Diagram of LRO in orbit, with its local coordinate axes labelled. The twice-yearly yaw flips reverse the direction of the spacecraft +X-axis relative to the spacecraft velocity vector, leading NAC images to be read out in a mirrored fashion. <a href="https://ntrs.nasa.gov/citations/20230010952">(Source)</a></figcaption>
</figure>

However, because of the pushbroom nature of the NAC cameras, these maneuvers actually reverse the orientation in which the pixels are read out as LRO scans over the surface, leading some images to be mirrored relative to their real-life perspective. This also means that the vertical offset of the two frames will be flipped, and thus the right frame will actually have a _negative_ line offset relative to the left frame if we follow the procedure above. To check whether the frames are inverted, you can look on its [WMS browse page](https://wms.lroc.asu.edu/lroc/view_lroc/LRO-L-LROC-2-EDR-V1.0/M1386796829RE), where there is a field for "LRO flight direction"; if this is "+X", no action needs to be taken, but if this is "-X", we will need to vertically flip the frames before mosaicking them:

```bash
flip from=M*L_lev1.cub to=M*L_lev1_flip.cub
flip from=M*R_lev1.cub to=M*R_lev1_flip.cub
```
After this, the steps are the same as above. At this stage, we could rotate our image to the correct (portrait) orientation using an ISIS command:

```bash
rotate from=M1386796829LR.cub  to=M1386796829LR_rot.cub degrees=90 interp=nearestneighbor 
```

However, even with nearest-neighbour interpolation this will actually resample the entire image and transfer the associated SPICE data to the new pixel coordinates, resulting in a very long processing time even for a simple 90-degree rotation. If you want to inspect your results, go ahead and do this; otherwise, we'll forge ahead and complete the rotation later (at output), which can be done much more quickly once in a standard image format.<span class="ref"><span class="refnum">[11]</span><span class="refbody">Note that if you _**do**_ decide to rotate your image during this step, you will need to modify the script presented in the next paragraph to account for the swapped axes</span></span>

Another annoying consequence of the pushbroom design of the NACs and LRO's evolving orbit is that individual NAC pixels are not inherently square, and in fact depend on the spacecraft's velocity at the time of acquisition. In the normal processing pipeline, this is not an issue, since performing map-projection on the frames inherently converts them into a representation with a fixed resolution specified in the map file. However, since we are working with the un-projected frames, we must manually calculate this approximate aspect ratio, and then apply a reduction that squishes the image into the approximately-correct dimensions. A [script that I wrote]() derived from the one in [this processing guide by the LROC team](https://www.lroc.asu.edu/data/support/downloads/LROC_NAC_Processing_Guide.pdf) (warning: PDF) is used to obtain an approximation of this aspect ratio. To use it, you run it from the command line and supply it with the two level 0 (or level 1) frames:

```bash
./get_image_resolution.sh M1386796829L_lev0.cub M1386796829R_lev0.cub
```

It will then print the individual line/sample resolution for the center of each frame, their average, and finally the derived `s_factor` and `l_factor` for scaling the final assembled mosaic<span class="ref"><span class="refnum">[12]</span><span class="refbody">Note that, in general, both the sample <b><u>and</u></b> line dimensions are scaled down for reasons not entirely clear to me but which seem to work out correctly. You could divide the two to obtain a scaling to apply _only_ in the sample direction, thus preserving the maximum vertical resolution, but I was just following what was in that PDF guide.</span></span><span class="ref"><span class="refnum">[13]</span><span class="refbody">Note also that the use of non-integer values in the scaling factors means there will be some resampling in the final image, but this should be worth the tradeoff of having approximately correct dimensions</span></span>

```bash
reduce from=M1386796829LR.cub to=M1386796829LR_aspect_scale.cub sscale=3.753951083027643 lscale=1.2756094146789607
```

## Outputting pretty pics

After all this ISIS processing, we can finally export our assembled oblique frame to a common image format for sharing with the world. ISIS provides support for outputting to a number of common file formats through the <code><a href="https://isis.astrogeology.usgs.gov/8.1.0/Application/presentation/Tabbed/isis2std/isis2std.html">isis2std</a></code> command, which also lets you set a number of output options depending on the file type. For our example, we will be outputting to JPEG, since we are mainly interested in creating pretty pictures and not preserving exact pixel intensity values.<span class="ref"><span class="refnum">[14]</span><span class="refbody">Our image is also unprojected, since we only did level 1 processing---for non-oblique images, you would typically want to project them into a geographic coordinate system, as dicussed [above](#typical-nac-processing). In these cases, outputting to a standard file with <code>isis2std</code> also creates a world file (e.g., .tfw for TIFF images) with geographic information, allowing the image to be imported into standard GIS software. A good overview of ISIS output options is available [here](https://astrogeology.usgs.gov/docs/getting-started/using-isis-first-steps/exporting-isis-data/)</span></span>

The first step in outputting is to return to <code>qview</code> and select a stretch that best captures the features in our image. Although the Moon is relatively uniformly low-albedo---on average, it's about as bright as a [typical asphalt road](https://www.universetoday.com/articles/astronomy-jargon-101-albedo)!---the ejecta of young impact craters can be significantly brighter, creating issues where they appear blown-out if the exposure range is set to produce a reasonable contrast level in the background terrain. Adjusting this is much more easily accomplished in typical image-editing software, so for now we mainly want to ensure we don't lose detail when outputting from ISIS cube to JPEG format.

In <code>qview</code>, click on the 


Next, we need to rotate the image to correct viewing orientation, as mentioned previously. In JPEG format, we can do this without modification of the actual image pixels by resetting and editing its EXIF data. We will need one additional tool for this procedure: the free [exiftool](https://exiftool.org/?from=AppAgg.com) developed by Phil Harvey. Once installed, we can issue this command to erase the EXIF data from our JPEG file:

```bash
exiftool -Orientation= -o M1386796829LR_aspect_scale_noexif.jpg M1386796829LR_aspect_scale.jpg
```

(Note the output file name comes first (after the -o tag), and the input file is at the end.) Now, if working on a Mac or Linux system, we can use a built-in tool called <code><a href="https://www.unix.com/man_page/v7/1/jpegtran/">jpegtran</a></code> to rotate the image and re-supply new EXIF data:

```bash
jpegtran -rotate 270 -outfile M1386796829LR_aspect_scale.jpg M1386796829LR_aspect_scale_noexif.jpg
```

Depending on the Z-axis orientation mentioned above, you may need to rotate the image either 90 degrees or 270 degrees to obtain the correction up-is-up orientation---if you mess up on the first try, just re-run the <code>isis2std</code> output command above, and try again starting from the <code>exiftool</code> step.

And voilà, the result! (Click to embiggenate)

<figure style="text-align:center">
    <a href="{{ imgpath }}/M1386796829LR_rescalc_avg_4xshrink.jpg" title=""><img src="{{ imgpath }}/M1386796829LR_rescalc_avg_4xshrink.jpg" alt=""></a>
</figure>

At this point, we're basically finished. The final JPEG image will usually be a few tens of MB in size, and you may want to scale it down or import it into your favourite image editing software to adjust value curves and the like. For my images, I usually decreased their resolution by 4x to make them manageable for uploading on this website, but you can find the full-resolution versions [on my Flickr](https://www.flickr.com/photos/198074779@N02/albums/72177720328597357/). 



%## Final thoughts

Till next time,

-xoxo gossip grad ☾⋆⁺₊⋆




