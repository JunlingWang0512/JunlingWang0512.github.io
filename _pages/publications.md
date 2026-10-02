---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% include base_path %}
<div class="publications-view">
<p class="section-intro">Research in AI, education, and human–computer interaction. <a href="{{ site.author.googlescholar }}">Google Scholar <span aria-hidden="true">↗</span></a></p>
<p class="contribution-key">* Equal contribution</p>
{% assign publications_by_year = site.publications | sort: "date" | reverse | group_by_exp: "paper", "paper.date | date: '%Y'" %}
{% for year in publications_by_year %}
  <h2 class="publication-year">{{ year.name }}</h2>
  {% for priority in (0..2) %}
    {% for post in year.items %}
      {% assign first_author = post.authors | split: "," | first | remove: "*" | strip %}
      {% assign author_priority = 2 %}
      {% if first_author == site.author.name %}
        {% assign author_priority = 0 %}
      {% elsif post.equal_contribution %}
        {% assign author_priority = 1 %}
      {% endif %}
      {% if author_priority == priority %}
        {% include publication-card.html %}
      {% endif %}
    {% endfor %}
  {% endfor %}
{% endfor %}
</div>
