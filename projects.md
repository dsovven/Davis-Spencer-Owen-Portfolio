---
title: "Projects"
layout: single
permalink: /projects/
classes: wide
---

Project examples below are structured to communicate technical ownership, constraints, execution, outcomes, and lessons learned.

Some details are generalized to protect program confidentiality while preserving engineering scope and methods.

{% assign project_items = site.projects | sort: "order" %}
{% include project-grid.html projects=project_items heading_tag="h2" %}
