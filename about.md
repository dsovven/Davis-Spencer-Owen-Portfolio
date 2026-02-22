---
title: "About"
layout: page
permalink: /about/
---

## Professional Summary

{{ site.data.profile.summary }}

## Skills & Competencies

<div class="skills-section">
{% for category in site.data.profile.skills %}
<div class="skill-category">
  <h4>{{ category[1].label }}</h4>
  <div class="skill-tags">
    {% for item in category[1].items %}
    <span class="skill-tag">{{ item }}</span>
    {% endfor %}
  </div>
</div>
{% endfor %}
</div>

## Professional Experience

{% for job in site.data.profile.experience %}
<div class="experience-entry">

### {{ job.role }}
**{{ job.company }}** | {{ job.location }} | {{ job.dates }}

{% for point in job.highlights %}
- {{ point }}
{% endfor %}

</div>
{% endfor %}

## Education

{% for edu in site.data.profile.education %}
- **{{ edu.school }}** - {{ edu.degree }} ({{ edu.graduation }}){% if edu.honors %}, {{ edu.honors }}{% endif %}
{% endfor %}

## Certifications

<div class="cert-grid">
{% for cert in site.data.profile.certifications %}
<span class="cert-badge">{{ cert }}</span>
{% endfor %}
</div>

## Organizations

{% for org in site.data.profile.organizations %}
- {{ org }}
{% endfor %}
