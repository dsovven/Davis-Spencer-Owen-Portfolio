---
title: "Davis Spencer Owen | Manufacturing Engineering Portfolio"
layout: single
permalink: /
classes: wide
---

<div class="hero-card">
  <p class="eyebrow">Manufacturing Engineering Portfolio</p>
  <h1>{{ site.data.profile.name }}</h1>
  <p class="lead">{{ site.data.profile.headline }}</p>
  <p>{{ site.data.profile.intro }}</p>
  <div class="hero-actions">
    <a class="btn btn--primary" href="{{ '/projects/' | relative_url }}">View Projects</a>
    <a class="btn btn--inverse" href="{{ '/about/' | relative_url }}">Professional Profile</a>
    <a class="btn btn--light-outline" href="{{ site.data.profile.resume_file | relative_url }}">Download Resume</a>
  </div>
</div>

<div class="info-grid">
  <div class="info-card">
    <h3>Current Role</h3>
    <p>{{ site.data.profile.current_role }}</p>
  </div>
  <div class="info-card">
    <h3>Location</h3>
    <p>{{ site.data.profile.location }}</p>
  </div>
  <div class="info-card">
    <h3>Clearance</h3>
    <p>{{ site.data.profile.clearance }}</p>
  </div>
</div>

## Core Expertise

<div class="pill-grid">
{% for item in site.data.profile.focus_areas %}
  <span class="pill">{{ item }}</span>
{% endfor %}
</div>

## Career Highlights

<div class="metric-grid">
{% for metric in site.data.profile.impact_metrics %}
  <div class="metric-card">{{ metric }}</div>
{% endfor %}
</div>

## Featured Projects

{% assign featured_projects = site.projects | where_exp: "project", "project.featured == true" | sort: "order" %}
{% if featured_projects and featured_projects.size > 0 %}
<div class="project-grid">
{% for project in featured_projects limit: 4 %}
  {% assign project_image = project.header.teaser | default: '/assets/img/project-submarine.svg' %}
  <article class="project-card project-card--featured">
    <a class="project-thumb-link" href="{{ project.url | relative_url }}">
      <img class="project-thumb" src="{{ project_image | relative_url }}" alt="{{ project.title }} teaser image" loading="lazy">
    </a>
    <p class="project-kicker">{{ project.role }} | {{ project.timeline }}</p>
    <h3><a href="{{ project.url | relative_url }}">{{ project.title }}</a></h3>
    <p>{{ project.excerpt | strip_html | truncate: 150 }}</p>
    <p><a class="btn btn--small btn--primary" href="{{ project.url | relative_url }}">View Project</a></p>
  </article>
{% endfor %}
</div>
{% else %}
{% assign fallback_projects = site.projects | sort: "date" | reverse %}
<div class="project-grid">
{% for project in fallback_projects limit: 4 %}
  {% assign project_image = project.header.teaser | default: '/assets/img/project-submarine.svg' %}
  <article class="project-card project-card--featured">
    <a class="project-thumb-link" href="{{ project.url | relative_url }}">
      <img class="project-thumb" src="{{ project_image | relative_url }}" alt="{{ project.title }} teaser image" loading="lazy">
    </a>
    <p class="project-kicker">{{ project.role }} | {{ project.timeline }}</p>
    <h3><a href="{{ project.url | relative_url }}">{{ project.title }}</a></h3>
    <p>{{ project.excerpt | strip_html | truncate: 150 }}</p>
    <p><a class="btn btn--small btn--primary" href="{{ project.url | relative_url }}">View Project</a></p>
  </article>
{% endfor %}
</div>
{% endif %}

[Browse all projects]({{ '/projects/' | relative_url }})