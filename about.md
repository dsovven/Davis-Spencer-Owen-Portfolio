---
title: "About"
layout: single
permalink: /about/
classes:
  - wide
  - article-page
---

## Professional Summary

{{ site.data.profile.intro }}

{{ site.data.profile.summary }}

## Professional Experience

<ol class="timeline">
{% for job in site.data.profile.experience %}
  <li class="timeline__item">
    <p class="timeline__dates">{{ job.dates }}</p>
    <h3 class="timeline__role">{{ job.role }}</h3>
    <p class="timeline__org">{{ job.company }} <span aria-hidden="true">&middot;</span> {{ job.location }}</p>
    <ul>
      {% for point in job.highlights %}<li>{{ point }}</li>{% endfor %}
    </ul>
  </li>
{% endfor %}
</ol>

## Education

{% for edu in site.data.profile.education %}
- **{{ edu.school }}**: {{ edu.degree }} ({{ edu.graduation }}){% if edu.honors %}, {{ edu.honors }}{% endif %}
{% endfor %}

## Credentials and Training

{% for cert in site.data.profile.certifications %}
- {{ cert }}
{% endfor %}

## Software and Systems

<div class="pill-grid">
{% for tool in site.data.profile.tools %}<span class="pill">{{ tool }}</span>{% endfor %}
</div>

## Programming

<div class="pill-grid">
{% for language in site.data.profile.programming %}<span class="pill">{{ language }}</span>{% endfor %}
</div>

## Organizations

{% for org in site.data.profile.organizations %}
- {{ org }}
{% endfor %}
