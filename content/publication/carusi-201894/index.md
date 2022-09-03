---
# Documentation: https://wowchemy.com/docs/managing-content/

title: An online approach for joint task assignment and worker evaluation in crowd-sourcing
subtitle: ''
summary: ''
authors:
- C. Carusi
- G. Bianchi
- L. Bracciale
tags:
- Inference engines;  Message passing
- Bayesian frameworks;  Computationally efficient;  Expectation Propagation;  Iterative
  technique;  Maximum weight matching;  Multiple choice questions;  Online approaches;  Task
  assignment
- Iterative methods
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
publishDate: '2022-09-03T08:52:59.322468Z'
publication_types:
- '2'
abstract: The paper tackles the problem of finding the correct solution to a set of
  multiple choice questions or labeling tasks, by adaptively assigning them to workers
  in a crowdsourcing system. When we do not initially know anything (besides common
  a priori statistics) about the workers and the questions involved, such problem
  becomes quite challenging and requires to jointly learn workers’ abilities and questions’
  difficulties, while adaptively assigning questions to the most appropriate workers
  so as to maximize our chances to find which are the correct answers. To address
  such problem, we first cast it into a suitably constructed Bayesian framework which
  permits us to obtain an analytically tractable (closed form) single-question inference
  step, and then we address the more general framework via the Expectation Propagation
  algorithm, an approximated message-passing iterative technique. We then exploit
  the (time-varying) information gathered by the inference framework as adaptive weights
  for a maximum weight matching task assignment policy, proposing a computationally
  efficient algorithm which maximizes the entropy reduction for the questions assigned
  at each step. Experimental results both on synthetic and real-world data shows that
  the proposed algorithm can significantly improve accuracy in predicting the correct
  solution to multiple choice questions. © 2018 Elsevier B.V.
publication: '*Pervasive and Mobile Computing*'
doi: 10.1016/j.pmcj.2018.08.004
links:
- name: URL
  url: https://www.scopus.com/inward/record.uri?eid=2-s2.0-85053451970&doi=10.1016%2fj.pmcj.2018.08.004&partnerID=40&md5=a6849e51be4ff1276e9b3876c4d6cd22
---
