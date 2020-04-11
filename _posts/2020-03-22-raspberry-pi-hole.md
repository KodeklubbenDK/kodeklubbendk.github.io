---
layout: post
title: Raspberry Pi-hole
subtitle: A DNS level adblocker for your private router
date: 2020-03-22  0:30:50 +0100
categories: raspberry linux adblock zero wifi
author: mkr
published: false
---

{% assign director = site.authors | where:"short_name", page.author | first %}
{% capture words %}
    {{ page.content | number_of_words | minus: 180}}
{% endcapture %}

<div class="post-header">
    <h1 class="post-title">{{ page.title }}</h1>
    <h3 class="post-subtitle">{{ page.subtitle }}</h3>
    <div class="post-info">
        <h5>{{ page.date | date: "%B %-d, %Y" }}</h5>
        <h5 class="pipe">|</h5>
            {% unless words contains "-" %}
        <h5>{{ words | plus: 180 | divided_by: 180 | append: " minutes to read" }}</h5>
    {% endunless %}
        <h5 class="pipe">|</h5>
        <h5>Written by {{ director.name }}</h5>
    </div>
</div>

<!-- --- 
## Table of content
{:.no_toc}
* TOC
{:toc} -->

<!-- CONTENT STARTS BELOW -->
---
## Pi-hole
Pi-hole© is a DNS sinkhole which protects mobile devices and laptops from unwanted content in apps and on webpages. It does not require any client-side software to run on your mobile device or laptop which indeed makes it pretty nice!

In other words Pi-hole is a modern adblocker at DNS level. It is a free and open source project and thereby it makes you the sole person in charge of your own privacy. Pi-hole comes with an easy to use and responsive web interface, from where it is possible to whitelist or blacklist domains that serves you with ads.

Pi-hole can't protect you from all ads since some adservices are dynamic or ads have been embedded directly into content. But overall it would protect against a lot of ads.

## Prerequisites
The only thing you will need in order to implement a pi-hole is a Raspberry Pi. Throughout this post i will be using a Raspberry Pi Zero W (version 1.1) from 2017.

If you have no experience using a Raspberry Pi or need to freshen it up - consider reading my post about [Getting started with Raspberry Pi Zero W.]({% post_url 2020-03-22-customizing-bash-terminal %}) <!-- LINK TO ANOTHER POST -->

## Installation
Before following this guide on how to install i would recommend you to take a look at the [offical documentation][pi-hole-docs]. This would be rather helpful in case of my guide being outdated.

### Upgrade Packages
I recommend you to start by upgrading your packages with the following command.

{% highlight bash %}
sudo apt-get update && sudo apt-get upgrade
{% endhighlight %}

### Methods
It is possible to install Pi-hole by 3 different methods eg. one step automated, cloning the repository or by an installer. I used the one step automated install for easiness but it has a major downside.

{% highlight bash %}
curl -sSL https://install.pi-hole.net | bash
{% endhighlight %}

Piping to bash is a controversial topic, as it prevents you from reading code that is about to run on your system which is the major downside by this installation method.

## User Interface

## DNS Settings
### Device
### Router

## Landing page (Redirect to /admin)

See [About]({{ site.baseurl }}/about)
[Github][github-account]{:target="_blank"}
[Organization][github-organization]{:target="_blank"}
[Pi-hole][pi-hole-docs]{:target="_blank"}

[github-account]: https://github.com/madssteiner
[github-organization]:   https://github.com/kodeklubbendk
[pi-hole-docs]: https://docs.pi-hole.net/main/basic-install/
[pi-hole-git]: https://github.com/pi-hole/pi-hole/#one-step-automated-install

<!-- SNIPPET OF OTHER RELATED ARTICLES AT BOTTOM -->
<!-- POST ABOUT USING PI HOLE WITH NGINX -->