---
# Documentation: https://wowchemy.com/docs/managing-content/

title: An online approach for joint task assignment and worker evaluation in crowd-sourcing
subtitle: ''
summary: ''
authors:
- G. Bianchi
- C. Carusi
- L. Bracciale
tags:
- Computer networks;  Iterative methods;  Message passing
- Adaptive weights;  Bayesian frameworks;  Computationally efficient;  Correct solution;  Entropy
  reduction;  Expectation Propagation;  Iterative technique;  Maximum weight matching
- Inference engines
categories: []
date: '2017-01-01'
lastmod: 2022-09-03T10:53:00+02:00
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
publishDate: '2022-09-03T08:53:00.167924Z'
publication_types:
- '1'
abstract: The paper tackles the problem of finding the correct solution to a set of
  binary choice questions or labeling tasks, by adaptively assigning them to workers
  in a crowdsourcing system. Such problem becomes quite challenging when we do not
  initially know neither workers' abilities, nor questions' difficulties (besides
  common a priori statistics), nor (of course) which is the correct answer. Indeed,
  such problem requires to jointly learn workers' abilities and questions' difficulties,
  while adaptively assigning questions to the most appropriate workers so as to maximize
  our chances to find which are the correct answers. To address such problem, we first
  cast it into a suitably constructed Bayesian framework which permits us to obtain
  an analytically tractable (closed form) single-question inference step, and then
  we address the more general framework via the Expectation Propagation algorithm,
  an approximated message-passing iterative technique. We then exploit the information
  gathered by the inference framework as adaptive weights for a maximum weight matching
  task assignment policy, proposing a computationally efficient algorithm which maximizes
  the entropy reduction for the questions assigned at each step. © 2017 IEEE.
publication: '*2017 International Symposium on Networks, Computers and Communications,
  ISNCC 2017*'
doi: 10.1109/ISNCC.2017.8072005
links:
- name: URL
  url: https://www.scopus.com/inward/record.uri?eid=2-s2.0-85039928797&doi=10.1109%2fISNCC.2017.8072005&partnerID=40&md5=fbbb8fe888b7804deafd9caf75f9d7d2
---
