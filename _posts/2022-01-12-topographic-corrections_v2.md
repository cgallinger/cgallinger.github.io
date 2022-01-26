---
title: "'Round About Midnight (with apologies to Miles Davis)"
date: 2022-01-12T09:00:00-04:00
published: false
categories:
  - blog
tags:
  - research
  - gradschool
---

Today we’re _finally_ going to get back to some research discussion, following on from a little post I made [wayyyyy back in July of last year](https://cgallinger.github.io) (oh my god, is this what it’s gonna feel like every time I look up from my work for the next four years?? 😭). Unfortunately the front-loading of last semester made it hard to make much progress on my research, especially because of the more finicky issues that have been cropping up. However, my pants got a real kicking when we had our most recent Diviner meeting back in December, where a grad student, Tyler Powell, who I've been sort-of working with presented some incredible results on corrected Diviner data for topography:

{% include figure image_path="/assets/images/tyler_elevation_calc.png" alt="A key slide from the presentation on correcting horizons for topography." caption="" %}

This blew my mind, as I knew that accounting for the spherical shape of the Moon was _probably_ an important thing I would have to eventually consider, but figured that it would be too difficult and minor to bother. However, Tyler's incredibly simple accounting for the Moon's curvature blew that pessimism out of the water, and seemed almost too good to be true.

Tyler and I have been the two main people working on incorporating these topographic corrections into modelling of Diviner data, but although I've been considering this problem since 2019 and Tyler's only been working on it for the past year, he's already blown way past me in his sophistication. (Truth be told, this has been activating my impostor syndrome quite a bit---but let's conveniently ignore that for now!)

Anyway, my next immediate thought was: wait a minute, that diagram seems to be missing some things... It turns out that _D_, the distance along the DEM used to calculate the elevation angle, _e_, is really the _arc length_ along a sphere, and thus should be a _tiny_ bit longer than Tyler showed. I thought this might have a 

[](https://github.com/uoftssxg/uoftssxg.github.io/commit/38806515b78f48c805ba37a2198d6119373f5d00), and six since we initially set it up). And now, I was on my own, having to solve everything with only a google search by my side.

I’d decided this was the best option though, so it was time to push forward.

## The Good

There were several big draws to using GitHub Pages over other hosting sites:
1. it was free
2. it integrated well with GitHub, which I was already using for hosting and version controlling my code (or at least, should be using, theoretically), and
3. it allows a great amount of customization, since all the html, markdown, and assets are accessible as editable files in your repository.

The last part was especially important, as a I wanted to ensure I had a website that was capable of LaTeX rendering, interactive figures, and could host jupyter notebooks or gitbook repositories, something many standard web hosts (e.g. WordPress) simply aren’t designed for.

I also didn’t want to rely on a service that may become out-of-date, or go under entirely over the course of my scientific career (ahhh, remember [blogspot?](https://jasonjournals.com/2020/03/02/what-happened-to-blogger/)) If I was going to go through the effort of setting up and regularly maintaining a centralized platform for all my professional work, I was going to do it right, damn it. Thankfully, GitHub’s near-universal adoption in the open-source community, and the ability to migrate to other Git repository hosts (e.g. GitLab) in the event of far-future catastrophe, kept me reasonably confident that this would be the safest, cheapest, and easiest option.

## The Bad

However, after following the initial setup guide for [GitHub Pages](https://pages.github.com/), and installing Ruby, Bundler, and Jekyll back in May, I started to run into problems when updating it recently. The first was that, while it integrates well with Jekyll, GitHub Pages technically only supports certain themes out-of-the-box, so you have to either set up a remote theme (based on a GitHub repository) or fork the theme and build your website in pure Jekyll, somewhat defeating the purpose and simplicity of the GitHub Pages setup.

## The Ugly

Additionally, I needed to learn an entirely new language (Ruby) in the middle of doing all of this, _while_ trying to write a paper, _while_ trying to _prepare to chair a session and present at a conference_, _**while**_ trying to _**find an apartment in a new city to move to in a month**_. I’d had previous experience with HTML and CSS from websites made lo many years ago as a wee la(ss/d), but Ruby and Jekyll’s header conventions and commands were completely foreign to me, and I was constantly worrying about missing something and borking the whole website. Which I of course did.

The great thing about version control is that, hypothetically, if you mess something up you can simply revert changes back to a previous version where things worked. However, this is where my woes with Git and GitHub start coming in. I originally learned Git from one of my lab colleagues back at UofT, who put together a [short course](https://github.com/cjtu/SSXG-git-course) on it, but still have yet to fully understand and master it. The connection between a remote and local version of your repository, pushing vs pulling, how to keep track of which changes are on which branches, appropriate etiquette for creating pull requests (which I recently severely violated when I [randomly created one in the process of trying to update my fork of somebody else’s repo](https://github.com/USDA-ARS-NWRC/topocalc/pull/11)): all of these things continue to elude me and give me tension headaches.

To be clear, all of this extra work isn’t even really a necessary part of my job. But it feels important to become competent with these tools in a world that’s increasingly moving towards open-source development and collaboration, especially in the sciences. The recent achievement of the first powered flight on Mars was even made possible by a [publicly-hosted GitHub repo!](https://github.com/readme/featured/nasa-ingenuity-helicopter ) Planetary science seems to be [getting on board with the concept as well](https://www.openplanetary.org/vcon).

I actually love this trend, as it’s enabled me to participate in cutting-edge science even as a spent a couple years outside of an academic institution, with no access to a MATLAB or ArcGIS licence. But I can’t say it’s been a walk in the park to learn all these new tools.

## The Solution

In the end, I decided to just start over and [fork a copy of the minimal-mistakes Jekyll theme repository](https://github.com/mmistakes/minimal-mistakes) and rebuild my website from that. I actually used a [repository specifically created as a template for a GitHub Pages starter](https://github.com/mmistakes/mm-github-pages-starter), which hugely simplified things. And thus came to be the page you are looking at now.

That’s all for now! Hopefully actual research and/or personal posts will resume next time.

xoxo gossip grad


