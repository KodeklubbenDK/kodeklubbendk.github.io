---
layout: post
title: Customizing Bash Terminal
date: 2020-03-22 10:43:41 +0100
categories: linux bash terminal
author: mkr
published: false
---
<div>
    {% capture words %}
        {{ page.content | number_of_words | minus: 180}}
    {% endcapture %}

    {% unless words contains "-" %}
        <h5>{{ words | plus: 180 | divided_by: 180 | append: " minutes to read" }}</h5>
    {% endunless %}
</div>
<div>
    {{ page.date | date: "%B %-d, %Y" }}
</div>

{% assign director = site.authors | where:"short_name", page.author | first %}

#### Author: {{ director.name }}

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam luctus metus vehicula dui pharetra, non sagittis sapien viverra. Etiam sollicitudin magna non sem pretium posuere et in lacus. Morbi viverra sem ipsum. Aliquam augue neque, placerat et leo nec, accumsan volutpat lorem. Integer et purus tempor, eleifend lacus eget, euismod tortor. Nulla facilisi. Vivamus lorem arcu, vestibulum ac tincidunt nec, posuere ut ex. Quisque ut sollicitudin odio, consequat pretium leo. Sed sed nibh eget enim pharetra pellentesque.

Pellentesque vel vehicula ex, id molestie nisl. Nulla convallis interdum lacus, vitae congue risus pharetra eget. Nullam imperdiet hendrerit turpis, dignissim suscipit orci eleifend ac. Vestibulum eu elementum turpis. Sed feugiat tempor consequat. Curabitur sed eros ornare, porttitor mauris ac, condimentum nunc. Aliquam venenatis risus sed pulvinar lobortis.

Aliquam tincidunt pharetra leo. Quisque sollicitudin vulputate tortor et iaculis. Duis condimentum nulla ultricies diam molestie porta sit amet non metus. Aliquam erat volutpat. Suspendisse lacinia porta justo at blandit. Integer pellentesque, nulla at vehicula elementum, quam ex dictum quam, quis mattis turpis est ac ipsum. Ut ac turpis neque. Vestibulum non purus sed lectus lacinia ullamcorper in in justo. Sed bibendum arcu at eros luctus, a feugiat mi volutpat. Proin ac tortor non quam aliquet dictum. Etiam blandit odio neque, quis commodo lectus gravida ac.

Etiam eu efficitur nulla. Curabitur porta mauris vel lacus fermentum, vel convallis tortor imperdiet. Aliquam et mollis mi. Etiam eu urna felis. Fusce sed nisi vitae metus gravida vehicula non eu metus. Quisque sagittis semper tortor, nec vestibulum turpis. Nunc rhoncus felis sapien, quis accumsan sapien pharetra vitae.

Donec dictum, felis vitae rhoncus bibendum, justo velit venenatis lacus, id maximus tortor sapien vel massa. Nullam congue felis pellentesque odio tempor dignissim. Nulla sapien tortor, bibendum vitae leo at, auctor fringilla dui. Phasellus faucibus libero metus, eu egestas lectus mollis quis. Aliquam ac ex luctus, efficitur lorem efficitur, euismod justo. Mauris mollis ipsum dui, et viverra enim mollis a. Nam nunc diam, placerat vel placerat nec, gravida posuere nisl. Nam sit amet sagittis lorem. 

See [About]({{ site.baseurl }}/about)
Check out the [Github Account][github-account] for more info on how to get the most out of Pi-hole.

File all bugs/feature requests at [Github Organization][github-organization].

If you have questions, you can ask them on [Slack / Discord][other-links-below].

[github-account]: https://github.com/madssteiner
[github-organization]:   https://github.com/kodeklubbendk
[other-links-below]: https://talk.jekyllrb.com/