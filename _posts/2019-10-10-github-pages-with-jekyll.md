---
layout: post
title:  "Github pages with Jekyll setup"
date:   2019-10-10 23:28:55 +0200
categories: jekyll update
published: false
---

# Welcome

**Hello world**, this is my first Jekyll blog post.

I hope you like it!

see installation guide on jekyll with ruby-bundler zlib1g-dev and so on. 
`sudo apt-get ruby-bundler .....`



`gem install jekyll bundler`
see the setup of the bash profile - maybe not usefull when using this setup. jekyll 4.0.0 has some issues which makes it impossible to build at the moment.

`bundle init`

add to Gemfile -> `gem 'jekyll', '3.8.5'`

{% highlight ruby %}
bundle install
bundle exec jekyll new .
{% endhighlight %}

`bundle install` or just `bundle`

`bundle exec jekylll new .` maybe with use of --force at the end `bundle exec jekyll new . --force` this will override and update the gemfile along with creation of all the needed jekyll files.

Then follow the guide for github pages setup in the gemfile comments. 

if using theme hosted by a github repo then replace theme with remote_theme and point to the namespace of the repo eg. madssteiner/jekyll-theme or if using github supported theme hav a look here (link to themes) and use the theme alreade in the gemfile.

Author: Mads Steiner Kristensen
Github: madssteiner
Organization: KodeklubbenDK
