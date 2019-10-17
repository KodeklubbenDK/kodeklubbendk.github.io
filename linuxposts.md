---
layout: page
title: Linux
permalink: /linux/
categories: [linux]
---
<h3>{{ page.category }}</h3>
{% for posts in site.categories[page.category] %}
  <ul>
      <li><span>{{ post.date | date_to_string }} - </span> <a href="{{ post.url }}">{{ post.title }}</a></li>
  </ul>
{% endfor %}