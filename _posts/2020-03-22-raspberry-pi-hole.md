---
layout: post
title: Raspberry Pi-hole
subtitle: A DNS level adblocker for your private router
date: 2020-03-22  0:30:50 +0100
categories: raspberry linux adblock zero wifi
author: mkr
published: true
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

<!-- CONTENT STARTS BELOW -->

## Prerequisites

The only thing you will need in order to implement a pi-hole is a Raspberry Pi. Throughout this post i will be using a Raspberry Pi Zero W (version 1.1) from 2017.

If you have no experience using a Raspberry Pi or forgot how to set it up - consider reading my post about [Getting started with Raspberry Pi Zero W.]({{ site.baseurl }})

See [About]({{ site.baseurl }}/about)
[Github][github-account]{:target="_blank"}
[Organization][github-organization]{:target="_blank"}
[Pi-hole][pi-hole-docs]{:target="_blank"}

[github-account]: https://github.com/madssteiner
[github-organization]:   https://github.com/kodeklubbendk
[pi-hole-docs]: https://docs.pi-hole.net/main/basic-install/
[pi-hole-git]: https://github.com/pi-hole/pi-hole/#one-step-automated-install

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam luctus metus vehicula dui pharetra, non sagittis sapien viverra. Etiam sollicitudin magna non sem pretium posuere et in lacus. Morbi viverra sem ipsum. Aliquam augue neque, placerat et leo nec, accumsan volutpat lorem. Integer et purus tempor, eleifend lacus eget, euismod tortor. Nulla facilisi. Vivamus lorem arcu, vestibulum ac tincidunt nec, posuere ut ex. Quisque ut sollicitudin odio, consequat pretium leo. Sed sed nibh eget enim pharetra pellentesque.

Pellentesque vel vehicula ex, id molestie nisl. Nulla convallis interdum lacus, vitae congue risus pharetra eget. Nullam imperdiet hendrerit turpis, dignissim suscipit orci eleifend ac. Vestibulum eu elementum turpis. Sed feugiat tempor consequat. Curabitur sed eros ornare, porttitor mauris ac, condimentum nunc. Aliquam venenatis risus sed pulvinar lobortis.

Aliquam tincidunt pharetra leo. Quisque sollicitudin vulputate tortor et iaculis. Duis condimentum nulla ultricies diam molestie porta sit amet non metus. Aliquam erat volutpat. Suspendisse lacinia porta justo at blandit. Integer pellentesque, nulla at vehicula elementum, quam ex dictum quam, quis mattis turpis est ac ipsum. Ut ac turpis neque. Vestibulum non purus sed lectus lacinia ullamcorper in in justo. Sed bibendum arcu at eros luctus, a feugiat mi volutpat. Proin ac tortor non quam aliquet dictum. Etiam blandit odio neque, quis commodo lectus gravida ac.

Etiam eu efficitur nulla. Curabitur porta mauris vel lacus fermentum, vel convallis tortor imperdiet. Aliquam et mollis mi. Etiam eu urna felis. Fusce sed nisi vitae metus gravida vehicula non eu metus. Quisque sagittis semper tortor, nec vestibulum turpis. Nunc rhoncus felis sapien, quis accumsan sapien pharetra vitae.

Donec dictum, felis vitae rhoncus bibendum, justo velit venenatis lacus, id maximus tortor sapien vel massa. Nullam congue felis pellentesque odio tempor dignissim. Nulla sapien tortor, bibendum vitae leo at, auctor fringilla dui. Phasellus faucibus libero metus, eu egestas lectus mollis quis. Aliquam ac ex luctus, efficitur lorem efficitur, euismod justo. Mauris mollis ipsum dui, et viverra enim mollis a. Nam nunc diam, placerat vel placerat nec, gravida posuere nisl. Nam sit amet sagittis lorem.

<!-- SNIPPET OF OTHER RELATED ARTICLES AT BOTTOM -->