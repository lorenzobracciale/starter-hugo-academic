---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Modeling LRU cache with invalidation
subtitle: ''
summary: ''
authors:
- A. Detti
- L. Bracciale
- P. Loreti
- N.B. Melazzi
tags:
- Internet
- Analytical performance evaluations;  Caching;  Caching performance;  Invalidation;  Least
  recently used;  Real applications;  Replacement policy;  Wikipedia
- Digital storage
categories: []
date: '2018-01-01'
lastmod: 2022-09-03T10:52:59+02:00
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
publishDate: '2022-09-03T08:52:59.828410Z'
publication_types:
- '2'
abstract: Least Recently Used (LRU) is a very popular caching replacement policy.
  It is very easy to implement and offers good performance, especially when data requests
  are temporally correlated, as in the case of web traffic. When the data content
  can change during time, as in the case of dynamic websites or within databases,
  there is the need to prevent the cache to serve stale data. This is usually done
  by triggering an invalidation event in the cache, to purge all the previously cached
  data concerning the invalidated data item. The invalidation process tends to worsen
  the caching performance, since stored items can be invalidated after a short time,
  thus wasting storage space. Several models in the literature allow quantifying the
  cache hit probability of an LRU cache, but, to the best of our knowledge, the presence
  of invalidation events has not been taken into account so far. In this paper, we
  present an analytical performance evaluation of LRU caches that takes into account
  data requests and invalidation events, both modeled as independent renewal processes.
  Simulation results show the accuracy of our model. Moreover, we apply our model
  to evaluate the LRU performance in the case of a real application, Wikipedia. Finally,
  we evaluate by means of simulations the effect of invalidation in hierarchical caching.
  Our work allows us to conclude that the presence of invalidation events does not
  severely impact the LRU performance in single caches. As a matter of fact, invalidation
  effects can be ignored there, unless the invalidation rate is comparable with the
  request rate and the per-object invalidation rate and request rate are highly correlated.
  However, in the case of hierarchical caching, even a limited effect of invalidation
  on first-level caches is sufficient to noticeably affect the performance of second
  level/downstream caches. © 2018 Elsevier B.V.
publication: '*Computer Networks*'
doi: 10.1016/j.comnet.2018.01.029
links:
- name: URL
  url: https://www.scopus.com/inward/record.uri?eid=2-s2.0-85041477914&doi=10.1016%2fj.comnet.2018.01.029&partnerID=40&md5=d7b2261fd3c8f9f5436814e659637b14
---
