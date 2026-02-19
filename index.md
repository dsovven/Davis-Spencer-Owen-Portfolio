---
title: "Manufacturing Engineering Portfolio Template"
layout: single
permalink: /
classes: wide
---

<div class="hero-card">
  <p class="eyebrow">GitHub Pages Starter</p>
  <h1>{{ site.data.profile.name }}</h1>
  <p class="lead">{{ site.data.profile.headline }}</p>
  <p>{{ site.data.profile.intro }}</p>
  <div class="hero-actions">
    <a class="btn btn--primary" href="{{ '/projects/' | relative_url }}">View Projects</a>
    <a class="btn btn--inverse" href="{{ site.data.profile.resume_file | relative_url }}">Download Resume</a>
  </div>
</div>

## Core Focus Areas

<div class="pill-grid">
{% for item in site.data.profile.focus_areas %}
  <span class="pill">{{ item }}</span>
{% endfor %}
</div>

## Example Impact Metrics

<div class="metric-grid">
{% for metric in site.data.profile.impact_metrics %}
  <div class="metric-card">{{ metric }}</div>
{% endfor %}
</div>

## Featured Projects

<div class="project-grid">
{% assign featured_projects = site.projects | where: "featured", true | sort: "order" %}
{% for project in featured_projects limit: 3 %}
  <article class="project-card">
    <p class="project-kicker">{{ project.role }} | {{ project.timeline }}</p>
    <h3><a href="{{ project.url | relative_url }}">{{ project.title }}</a></h3>
    <p>{{ project.excerpt | strip_html | truncate: 150 }}</p>
  </article>
{% endfor %}
</div>

[Browse all projects]({{ '/projects/' | relative_url }})
