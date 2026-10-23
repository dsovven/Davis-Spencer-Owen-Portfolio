---
title: "Home"
layout: single
permalink: /
classes:
  - wide
  - home-page
---

{% assign profile = site.data.profile %}
<section class="hero-card" aria-labelledby="home-heading">
  <div class="hero-grid">
    <div class="hero-text">
      <p class="eyebrow">Manufacturing Engineering Portfolio</p>
      <h1 id="home-heading">{{ profile.name }}</h1>
      <p class="lead">{{ profile.positioning }}</p>
      <ul class="hero-facts">
        <li>{{ profile.current_role_short }}</li>
        <li>{{ profile.location }}</li>
        <li>{{ profile.clearance }}</li>
      </ul>
      <div class="hero-actions">
        <a class="btn btn--primary" href="{{ '/projects/' | relative_url }}">View Projects</a>
        <a class="btn btn--inverse" href="{{ '/about/' | relative_url }}">Professional Profile</a>
        <a class="btn btn--light-outline" href="{{ profile.resume_file | relative_url }}">Download Resume</a>
      </div>
    </div>
    <img class="hero-photo" src="{{ profile.headshot | relative_url }}" alt="Portrait of {{ profile.name }}" width="600" height="600">
  </div>
</section>

<section class="lifecycle" aria-labelledby="lifecycle-heading">
  <h2 id="lifecycle-heading" class="lifecycle__title">End-to-end build ownership</h2>
  <ol class="lifecycle__steps">
    {% for step in profile.lifecycle %}<li><span class="lifecycle__num">{{ forloop.index }}</span>{{ step }}</li>{% endfor %}
  </ol>
</section>

## Featured Projects

{% assign featured_projects = site.projects | where_exp: "project", "project.featured == true" | sort: "order" %}
{% if featured_projects and featured_projects.size > 0 %}
{% include project-grid.html projects=featured_projects heading_tag="h3" %}
{% else %}
{% assign fallback_projects = site.projects | sort: "date" | reverse %}
{% include project-grid.html projects=fallback_projects heading_tag="h3" %}
{% endif %}

[Browse all projects]({{ '/projects/' | relative_url }})

## Career Highlights

<div class="metric-grid">
{% for metric in profile.impact_metrics %}
  <div class="metric-card">{{ metric }}</div>
{% endfor %}
</div>

## Core Expertise

<div class="expertise-grid">
{% for group in profile.expertise_groups %}
  <div class="expertise-card">
    <h3>{{ group.name }}</h3>
    <ul>
      {% for item in group.items %}<li>{{ item }}</li>{% endfor %}
    </ul>
  </div>
{% endfor %}
  <div class="expertise-card">
    <h3>Software and Systems</h3>
    <ul>
      {% for tool in profile.tools %}<li>{{ tool }}</li>{% endfor %}
    </ul>
  </div>
</div>
