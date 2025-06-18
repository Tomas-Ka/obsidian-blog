---
layout: page
title: Archive
---
<ul class="archive">
{% assign notes = site.notes | last_modified_at_sort | reverse %}
{% for note in notes %}
<li>
    <a href="{{ note.url }}{%- if site.use_html_extension -%}.html{%- endif-%}" class="internal-link">
        {{note.title}}
    </a>
    {% if note.category != null %} in {{note.category}}
    {% endif %}
    <span>
        ({{ note.last_modified_at| date: "%dth %B %Y" }})
    </span>
    <p>
        {{ note.excerpt | strip_html | truncate: 60, "..." }}
    </p>
</li>
{% endfor %}
</ul>
