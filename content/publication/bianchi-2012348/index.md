---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'Better than nothing privacy with bloom filters: To what extent?'
subtitle: ''
summary: ''
authors:
- G. Bianchi
- L. Bracciale
- P. Loreti
tags:
- Data structures;  Economic and social effects
- Approximate formulas;  Bloom filters;  Data representations;  Probabilistic anonymity;  Probabilistic
  data;  Random bits;  Set membership;  Trade off
- Data privacy
categories: []
date: '2012-01-01'
lastmod: 2022-09-03T10:53:02+02:00
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
publishDate: '2022-09-03T08:53:01.841341Z'
publication_types:
- '2'
abstract: Bloom filters are probabilistic data structures which permit to conveniently
  represent set membership. Their performance/memory efficiency makes them appealing
  in a huge variety of scenarios. Their probabilistic operation, along with the implicit
  data representation, yields some ambiguity on the actual data stored, which, in
  scenarios where cryptographic protection is unviable or unpractical, may be somewhat
  considered as a better than nothing privacy asset. Oddly enough, even if frequently
  mentioned, to the best of our knowledge the (soft) privacy properties of Bloom filters
  have never been explicitly quantified. This work aims to fill this gap. Starting
  from the adaptation of probabilistic anonymity metrics to the Bloom filter setting,
  we derive exact and (tightly) approximate formulae which permit to readily relate
  privacy properties with filter (and universe set) parameters. Using such relations,
  we quantitatively investigate the emerging privacy/utility trade-offs. We finally
  preliminary assess the advantages that a tailored insertion of a few extra (covert)
  bits achieves over the commonly employed strategy of increasing ambiguity via addition
  of random bits. © 2012 Springer-Verlag Berlin Heidelberg.
publication: '*Lecture Notes in Computer Science (including subseries Lecture Notes
  in Artificial Intelligence and Lecture Notes in Bioinformatics)*'
doi: 10.1007/978-3-642-33627-0_27
links:
- name: URL
  url: https://www.scopus.com/inward/record.uri?eid=2-s2.0-84867551623&doi=10.1007%2f978-3-642-33627-0_27&partnerID=40&md5=913e41a4473271a8cdede663754285c1
---
