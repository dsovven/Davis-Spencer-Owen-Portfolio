---
title: "Contact"
layout: page
permalink: /contact/
---

<div class="contact-hero">
  <p>I'm open to new opportunities in manufacturing engineering, NPI, and process development. Reach out through any of the channels below.</p>
</div>

<div class="contact-cards">
  <a class="contact-card contact-card--primary" href="mailto:{{ site.data.profile.email }}">
    <strong>Email</strong>
    <span>{{ site.data.profile.email }}</span>
  </a>
  <a class="contact-card" href="{{ site.data.profile.linkedin }}" target="_blank" rel="noopener">
    <strong>LinkedIn</strong>
    <span>davis-spencer-owen</span>
  </a>
  <a class="contact-card" href="{{ site.data.profile.github }}" target="_blank" rel="noopener">
    <strong>GitHub</strong>
    <span>dsovven</span>
  </a>
  <div class="contact-card">
    <strong>Phone</strong>
    <span>{{ site.data.profile.phone }}</span>
  </div>
  <div class="contact-card">
    <strong>Location</strong>
    <span>{{ site.data.profile.location }}</span>
  </div>
  <div class="contact-card">
    <strong>Clearance</strong>
    <span>{{ site.data.profile.clearance }}</span>
  </div>
</div>

## What I'm Looking For

<div class="looking-for">
  <div class="looking-for-col">
    <h4>Target Roles</h4>
    <ul>
    {% for role in site.data.profile.open_to.roles %}
      <li>{{ role }}</li>
    {% endfor %}
    </ul>
  </div>
  <div class="looking-for-col">
    <h4>Industries</h4>
    <ul>
    {% for industry in site.data.profile.open_to.industries %}
      <li>{{ industry }}</li>
    {% endfor %}
    </ul>
  </div>
  <div class="looking-for-col">
    <h4>Location</h4>
    <p>{{ site.data.profile.open_to.location }}</p>
  </div>
</div>

## For Recruiters

If you are reaching out about a role, it helps to include:
- Product line and program type
- Work location and expected travel
- Team size and reporting structure
- Timeline and start date

Preferred contact method: **email**.
