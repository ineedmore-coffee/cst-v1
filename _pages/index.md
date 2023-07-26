---
layout: page
title: Welcome to the Coffee Shop Table!
id: home
permalink: /
---

<br/>
![Hand drawn sketch on napkin depicting a table in a coffee shop](/assets/index/coffee-shop-table-napkin.png)
<span style="display: block; text-align: center"><small><i>Drawing inspired by <a href="https://blackhandcoffeeco.com/">Black Hand Coffee</a> in Richmond, VA</i></small></span>
<br/>

You'll often find me here, hunkered down typing away at some odd thing in the morning hours. As you walk up, you'll notice a few things. I'll usually have something to drink, typically coffee, and sometimes a snack too. I'll have my laptop out, as well as some other [[devices]], a [[notebook]] or two that's relevant to the topic at hand, and my trusty [[legal pad]] to scratch notes on. You'll also notice that there are a number of [[napkins]] strewn around the table, with a variety of diagrams and drawings on them.

**The Coffee Shop Table is my public in-between space**, a place where I can aggregate knowledge about a variety of topics.

<strong>Recently updated notes</strong>

<ul>
  {% assign recent_notes = site.notes | sort: "last_modified_at_timestamp" | reverse %}
  {% for note in recent_notes limit: 5 %}
    <li>
      {{ note.last_modified_at | date: "%Y-%m-%d" }} — <a class="internal-link" href="{{ note.url }}">{{ note.title }}</a>
    </li>
  {% endfor %}
  <li>
    <a class="internal-link" href="/recent-notes">View more recent notes</a>
  </li>
</ul>
