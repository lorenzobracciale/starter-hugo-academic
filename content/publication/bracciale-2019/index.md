---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'Analysis of data persistence in collaborative content creation systems: The
  Wikipedia Case'
subtitle: ''
summary: ''
authors:
- L. Bracciale
- P. Loreti
- A. Detti
- N.B. Melazzi
tags:
- Search engines;  Web crawler
- Caching;  Content revisions;  Data statistics;  Popularity;  Wikipedia
- Statistics
categories: []
date: '2019-01-01'
lastmod: 2022-09-03T10:52:58+02:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ''
  focal_point: ''
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
publishDate: '2022-09-03T08:52:58.816977Z'
publication_types:
- '2'
abstract: A very common problem in designing caching/prefetching systems, distribution
  networks, search engines, and web-crawlers is determining how long a given content
  lasts before being updated, i.e., its update frequency. Indeed, while some content
  is not frequently updated (e.g., videos), in other cases revisions periodically
  invalidate contents. In this work, we present an analysis ofWikipedia, currently
  the 5th most visited website in the world, evaluating the statistics of updates
  of its pages and their relationship with page view statistics. We discovered that
  the number of updates of a page follows a lognormal distribution. We provide fitting
  parameters as well as a goodness of fit analysis, showing the statistical significance
  of the model to describe the empirical data. We perform an analysis of the views-updates
  relationship, showing that in a time period of a month, there is a lack of evident
  correlation between the most updated pages and the most viewed pages. However, observing
  specific pages, we show that there is a strong correlation between the peaks of
  views and updates, and we find that in more than 50% of cases, the time difference
  between the two peaks is less than a week. This reflects the underlying process
  whereby an event causes both an update and a visit peak that occurs with different
  time delays. This behavior can pave the way for predictive traffic analysis applications
  based on content update statistics. Finally, we show how the model can be used to
  evaluate the performance of an in-network caching scenario. © 2019 by the authors.
publication: '*Information (Switzerland)*'
doi: 10.3390/info10110330
links:
- name: URL
  url: https://www.scopus.com/inward/record.uri?eid=2-s2.0-85075644585&doi=10.3390%2finfo10110330&partnerID=40&md5=a7d74a4fdf246f5c72b80634f0446240
---
