---
title: "Creating a website with GitHub Pages"
date: 2021-07-14T15:34:30-04:00
categories:
  - blog
tags:
  - website
  - github
---

I’ve finally started migrating my writing from Medium over to here, in order to have a centralized platform with all of my professional work in one place. Having used GitHub Pages to help [create a website for our lab group when I was at UofT](https://uoftssxg.github.io/), I figured it would be a good and familiar place for me to start, as well as integrating well with my goal of maintaining any code I use for research in publicly-available GitHub repositories. If it worked once, how hard could it be to work again, right?

Boy, did I somehow erase any memory of how wrong that was.

I had collaborated with a bunch of my other lab colleagues on that project (some of whom, importantly, are much more into CS and Git-related stuff than I am), and I _severely_ overestimated how much I would retain from it.<span class="ref"><span class="refnum">[1]</span><span class="refbody">It’s been, to be fair, more than [3 years since my last commit to the old website](https://github.com/uoftssxg/uoftssxg.github.io/commit/38806515b78f48c805ba37a2198d6119373f5d00), and six since we initially set it up</span></span> And now, I was on my own, having to solve everything with only a google search by my side. 

I’d already committed to this as the best option I knew of, though, so it was time to push forward.

## The Good

There were several big draws to using GitHub Pages over other hosting sites:
1. it's free
2. it integrates well with GitHub, which I was already using for hosting and version controlling my code<span class="ref"><span class="refnum">[2]</span><span class="refbody">Read: _should_ be using... 😓</span></span>, and
3. it allows a large amount of customization, since all the html, markdown, and assets are accessible as editable files in your repository.

The last part was especially important, as a I wanted to ensure I had a website that was capable of LaTeX rendering, interactive figures, and could host Jupyter notebooks or Gitbook repositories, something many standard web hosts (e.g. WordPress) simply aren’t designed for.

I also didn’t want to rely on a service that may become out-of-date, or go under entirely over the course of my scientific career.<span class="ref"><span class="refnum">[3]</span><span class="refbody">RIP in peace [Blogspot](https://jasonjournals.com/2020/03/02/what-happened-to-blogger/)</span></span> If I was going to go through the effort of setting up and regularly maintaining a centralized platform for all my professional work, I was going to do it right, damn it! Thankfully, GitHub’s near-universal adoption in the open-source community, and the ability to migrate to other Git repository hosts (e.g. GitLab) in the event of far-future catastrophe, kept me reasonably confident that this would be the safest, cheapest, and easiest option.

## The Bad

However, after following the initial setup guide for [GitHub Pages](https://pages.github.com/), and installing Ruby, Bundler, and Jekyll back in May, I started to run into problems when updating it recently. The first was that, while it integrates well with Jekyll, GitHub Pages technically only supports certain themes out-of-the-box, so you have to either set up a remote theme (based on a GitHub repository) or [fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo) the theme and build your website in pure Jekyll/CSS, somewhat defeating the purpose and simplicity of the GitHub Pages setup.

## The Ugly

Additionally, I needed to learn an entirely new language (Ruby) in the middle of doing all of this.<span class="ref"><span class="refnum">[4]</span><span class="refbody">..._while_ trying to write a paper, _while_ trying to _prepare to chair a session and present at a conference_, _**while**_ trying to _**find an apartment in a new city to move to in a month**_...</span></span> I’d had previous experience with HTML and CSS from websites made lo many years ago as a wee la(ss/d), but Ruby and Jekyll’s header conventions and commands were completely foreign to me, and I was constantly worrying about missing something and borking the whole website---which, of course, I did.

The great thing about version control is that, hypothetically, if you mess something up you can simply revert changes back to a previous version where things worked. However, this is where my woes with Git and GitHub start coming in. I originally learned Git from one of my lab colleagues back at UofT, who put together a [short course](https://github.com/cjtu/SSXG-git-course) on it, but still have yet to fully understand and master it. The connection between a remote and local version of your repository, pushing vs pulling, how to keep track of which changes are on which branches, appropriate etiquette for creating pull requests (which I recently severely violated when I [randomly created one in the process of trying to update my fork of somebody else’s repo](https://github.com/USDA-ARS-NWRC/topocalc/pull/11)): all of these things continue to elude me and give me tension headaches.

To be clear, all of this extra work isn’t even really a necessary part of my job. But it feels important to become competent with these tools in a world that’s increasingly moving towards open-source development and collaboration, especially in the sciences. The recent achievement of the first powered flight on Mars was even made possible by a [publicly-hosted GitHub repo!](https://github.com/readme/featured/nasa-ingenuity-helicopter ) Planetary science seems to be [getting on board with the concept as well](https://www.openplanetary.org/vcon).

I actually love this trend, as it’s enabled me to participate in cutting-edge science even as a spent a couple years outside of an academic institution, with no access to a MATLAB or ArcGIS licence, via projects such as [spyder](https://www.spyder-ide.org/) and [QGIS](https://www.qgis.org/). But I can’t say it’s been a walk in the park to grapple with these new tools in the midst of trying to get everything else going on this PhD journey.

## The Solution

In the end, I decided to just start over and fork a copy of the [minimal-mistakes Jekyll theme](https://github.com/mmistakes/minimal-mistakes) and rebuild my website from that. I actually used a [repository specifically created as a template for a GitHub Pages starter](https://github.com/mmistakes/mm-github-pages-starter), which hugely simplified things---if you're looking to create a website this way yourself, I highly recommend this option. Once you have the repository cloned to your local computer with the GitHub version set up as the remote/origin, there is also a relatively simple set of commands that will cover almost everything you need to create new posts/pages and keep things synchronized. My typical process now looks like this:

First, you prepare the current state of your repository to be saved as a "checkpoint" (a "commit", in Git parlance). These checkpoints usually correspond to major updates or additions to the website, such as creating a new post, changes to CSS styling, etc. In your terminal/command prompt, change directories to the top-level folder for your repository, and type

```
git add .
```

This won't seem to do or display anything, but your changes will now be staged for the commit. (You can also do this repeatedly and frequently between commits to make sure everything is ready to go at all times.) Next, we will commit these changes on the local copy of the repository; during this step, we are also required to write a message giving a brief explanation of what those changes are:

```
git commit -m "Added new post about creating a website with GitHub Pages"
```

When completed, this should display a bunch of information about the files you've changed/added/deleted. Finally, we sync (push) this to the origin (our personal GitHub fork of the original repository), and after a short amount of time, the website will automatically update to match the repository content:

```
git push -u origin
```

And that's it! For the most part, those are the only Git commands you'll regularly use when adding things to your site. There are of course many more things you can do with Git, including making different versions (branches) of your website to try out different functionality/aesthetics, rolling back to previous versions if you accidentally break something, etc., but this should give you a minimal working procedure.

As a final note, when working on creating a new post/making aesthetic changes, you can preview your site by typing the following in your website repository's top-level directory:

```
bundle exec jekyll serve --livereload
```

This will create a local copy you can access at `http://127.0.0.1:4000/`, which will also reload/update every time you edit one of the repository files. While some features don't work properly in this format<span class="ref"><span class="refnum">[5]</span><span class="refbody">namely, I haven't yet figured out how to get video files to display/play locally</span></span>, it greatly aids in assessing the final look of your posts/site without going through the full commit procedure and waiting for the site to update.

That’s all for now! Hopefully actual research and/or personal posts will resume next time.

Till then,

-xoxo gossip grad ☾⋆⁺₊⋆


