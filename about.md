---
title: "About"
layout: single
permalink: /about/
classes: wide
---

## Professional Summary

{{ site.data.profile.summary }}

## Professional Experience

{% for job in site.data.profile.experience %}
### {{ job.role }}
**{{ job.company }} | {{ job.location }} | {{ job.dates }}**

{% for point in job.highlights %}
- {{ point }}
{% endfor %}

{% endfor %}

## Education

{% for edu in site.data.profile.education %}
- **{{ edu.school }}** - {{ edu.degree }} ({{ edu.graduation }}){% if edu.honors %}, {{ edu.honors }}{% endif %}
{% endfor %}

## Certifications

{% for cert in site.data.profile.certifications %}
- {{ cert }}
{% endfor %}

## Software and Systems

{% for tool in site.data.profile.tools %}
- {{ tool }}
{% endfor %}

## Programming

{% for language in site.data.profile.programming %}
- {{ language }}
{% endfor %}

## Organizations

{% for org in site.data.profile.organizations %}
- {{ org }}
{% endfor %}