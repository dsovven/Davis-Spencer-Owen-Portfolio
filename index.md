---
layout: home
permalink: /
---

<section class="hero">
  <div class="hero-inner">
    <p class="hero-eyebrow">Manufacturing Engineering Portfolio</p>
    <h1>{{ site.data.profile.name }}</h1>
    <p class="hero-headline">{{ site.data.profile.headline }}</p>
    <p class="hero-intro">{{ site.data.profile.intro }}</p>
    <div class="hero-actions">
      <a class="btn btn-primary" href="{{ '/projects/' | relative_url }}">View Projects</a>
      <a class="btn btn-secondary" href="{{ '/about/' | relative_url }}">About Me</a>
      <a class="btn btn-secondary" href="{{ site.data.profile.resume_file | relative_url }}">Resume</a>
    </div>
  </div>
</section>

<div class="info-strip">
  <div class="info-strip-inner">
    <div class="info-item">
      <p class="info-label">Current Role</p>
      <p class="info-value">{{ site.data.profile.current_role }}</p>
    </div>
    <div class="info-item">
      <p class="info-label">Location</p>
      <p class="info-value">{{ site.data.profile.location }}</p>
    </div>
    <div class="info-item">
      <p class="info-label">Clearance</p>
      <p class="info-value">{{ site.data.profile.clearance }}</p>
    </div>
  </div>
</div>

<section class="section">
  <div class="section-header">
    <h2>Core Expertise</h2>
    <p>Technical focus areas and domain specializations</p>
  </div>
  <div class="skills-grid">
    {% for item in site.data.profile.focus_areas %}
    <span class="skill-pill">{{ item }}</span>
    {% endfor %}
  </div>
</section>

<section class="section">
  <div class="section-header">
    <h2>Career Highlights</h2>
    <p>Key accomplishments and measurable impact</p>
  </div>
  <div class="metrics-grid">
    {% for metric in site.data.profile.impact_metrics %}
    <div class="metric-card"><p>{{ metric }}</p></div>
    {% endfor %}
  </div>
</section>

<section class="section">
  <div class="section-header">
    <h2>Featured Projects</h2>
    <p>Selected work demonstrating technical ownership and execution</p>
  </div>
  {% assign featured_projects = site.projects | where: "featured", true | sort: "order" %}
  {% assign display_projects = featured_projects %}
  {% if display_projects.size == 0 %}
    {% assign display_projects = site.projects | sort: "date" | reverse %}
  {% endif %}
  <div class="projects-grid">
    {% for project in display_projects limit: 4 %}
    <a class="project-card" href="{{ project.url | relative_url }}">
      {% if project.header.teaser %}
      <div class="card-img">
        <img src="{{ project.header.teaser | relative_url }}" alt="{{ project.title }}" loading="lazy">
      </div>
      {% endif %}
      <div class="card-body">
        <div class="card-tags">
          {% for tag in project.tags limit: 2 %}
          <span class="tag">{{ tag }}</span>
          {% endfor %}
        </div>
        <h3>{{ project.title }}</h3>
        <p>{{ project.excerpt | strip_html | truncate: 120 }}</p>
        <div class="card-footer">
          <span class="card-role">{{ project.role }}</span>
          <span class="card-arrow">&rarr;</span>
        </div>
      </div>
    </a>
    {% endfor %}
  </div>
</section>

<section class="section" style="padding-top: 0;">
  <div class="cta-section">
    <h2>Interested in working together?</h2>
    <p>Open to new opportunities in manufacturing engineering, NPI, and process development.</p>
    <a class="btn btn-primary" href="{{ '/contact/' | relative_url }}">Get in Touch</a>
  </div>
</section>
