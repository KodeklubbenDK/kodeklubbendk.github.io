---
layout: page
title: Linux
permalink: /linux/
categories: [linux]
---

<h3>{{ Posts about linux }}</h3>
{% for post in site.posts %}
    {% if post.categories contains "linux" %}
  <ul>
      <li><span>{{ post.date | date_to_string }}</span> <a href="{{ post.url }}">{{ post.title }}</a></li>
  </ul>
    {% endif %}
{% endfor %}

<!-- {% for category in site.categories %}
  <h3>{{ category[0] }}</h3>
  <ul>
    {% for post in category[1] %}
      <li><span>{{ post.date | date_to_string }}</span> <a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %} -->