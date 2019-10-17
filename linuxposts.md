---
layout: page
title: Linux
permalink: /linux/
categories: [linux]
---
<h3>{{ Posts about linux }}</h3>
{% for posts in site.posts %}
    {% if posts.categories contains "linux" %}
  <ul>
      <li><span>{{ post.date | date_to_string }} - </span> <a href="{{ post.url }}">{{ post.title }}</a></li>
  </ul>
    {% endif %}
{% endfor %}