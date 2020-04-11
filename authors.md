---
layout: page
title: Authors
permalink: /authors/
categories: [authors]
---

<link rel="stylesheet" href="/assets/css/author-card.css">

{% comment %}
*
*{% assign count = 0 %}
*{% for item in site.posts %}
*{% unless item.published == false %}
*{% assign count=count | plus:1 %}
*{% endunless %}
*{% endfor %}
*{{ count }}
*
{% endcomment %}

<div class="list">
{% for author in site.authors %}
  <div class="author-card">
    <div class="author-image">
      <img src="https://via.placeholder.com/100">
    </div>
    <div class="author-title">
      <h3><a href="{{ author.url }}">{{ author.name }}</a></h3>
      <h4>{{ author.position }}</h4>
    </div>
    <div class="author-prestige">
      <div class="award">
      {% assign count = 0 %}
      {% assign item = site.posts | where:"author", author.short_name %}
      {% for post in item %}
      {% unless post.published == false %}
      {% assign count=count | plus:1 %}
      {% endunless %}
      {% endfor %}
        <h5>{{ count }}</h5>
        <h6>Posts</h6>
      </div>
      <div class="award">
        <h5>{{ author.job }}</h5>
        <h6>Job</h6>
      </div>
      <div class="award">
        <h5>{{ author.created }}</h5>
        <h6>Member since</h6>
      </div>
    </div>
    <!-- <div>{{ author.content | markdownify }}</div> -->
  </div>
  {% endfor %}
</div>
 
