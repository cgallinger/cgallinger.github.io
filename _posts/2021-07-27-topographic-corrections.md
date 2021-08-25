---
title: "Creating a website with GitHub Pages"
date: 2021-07-14T15:34:30-04:00
published: false
categories:
  - blog
tags:
  - website
  - github
---

I’ve finally started migrating my writing from Medium over to here, in order to have a centralized platform with all of my professional work in one place. Having used GitHub Pages to [create a website for our lab group when I was at UofT](https://uoftssxg.github.io/), I figured it would be a good and familiar place for me to start, as well as integrating well with my goal of maintaining any code I use for research in publicly-available GitHub repositories. If it worked once, how hard could it be to work again, right?

Boy, did I somehow erase any memory of how wrong that was.

I previously had help from a bunch of my other lab colleagues, some of whom are much more into CS and Git-related stuff than I am. But I severely underestimated how much I would retain from that experience (it’s been, to be fair, more than [3 years since my last commit to the old website](https://github.com/uoftssxg/uoftssxg.github.io/commit/38806515b78f48c805ba37a2198d6119373f5d00), and six since we initially set it up). And now, I was on my own, having to solve everything with only a google search by my side.

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


