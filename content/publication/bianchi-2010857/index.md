---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'Streamline: An optimal distribution algorithm for peer-to-peer real-time streaming'
subtitle: ''
summary: ''
authors:
- G. Bianchi
- N. Blefari Melazzi
- L. Bracciale
- F. Lo Piccolo
- S. Salsano
tags:
- Analytical model;  Basic idea;  Distributed applications;  Distributed systems;  Distribution
  algorithms;  Optimal distributions;  Optimality;  P2P streaming;  Parallel transmission;  Peer
  nodes;  Peer to peer;  Performance attributes;  Performance of systems;  Practical
  implementation;  Real systems;  Real time streaming;  Relaying Nodes;  Serial transmission;  Simulation
  packages;  Source nodes;  Store and forward;  Theoretical bounds;  Time interval
- Algorithms;  Computer simulation;  Mathematical models
- Peer to peer networks
categories: []
date: '2010-01-01'
lastmod: 2022-09-03T10:53:03+02:00
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
publishDate: '2022-09-03T08:53:03.032756Z'
publication_types:
- '2'
abstract: 'In this paper, we propose and evaluate an overlay distribution algorithm
  for P2P, chunk-based, streaming systems over forest-based topologies. In such systems,
  the stream is divided in chunks; chunks are delivered by each node in a store-and-forward
  way. A relaying node starts distributing a chunk only when it has completed its
  reception from another node. Peers are logically organized in a forest of trees,
  where each tree includes all peers. The source periodically distributes different
  chunks to each tree for their delivery. Our key idea consists in employing serial
  transmission: for each tree, and thus, for each chunk, the source node sends the
  chunk to its children in series; the same holds for each peer node of the tree,
  excluding the leaves. Besides this basic idea, the contributions of this paper are:
  1) we demonstrate the feasibility of serial transmission over a forest of trees,
  which is not a trivial problem, unlike the case of parallel transmission; 2) we
  derive an analytical model to evaluate the system performance; 3) we derive a theoretical
  bound for the number of nodes reachable in a given time interval or equivalently
  for the time required to reach a given number of nodes; 4) we prove the optimality
  of our approach in terms of its capability to reach such bound; and 5) we develop
  a general simulation package for P2P streaming systems and use it to compare our
  solution to literature results. Finally, we stress that this paper is focused on
  the theoretical properties and performance understanding of the proposed distribution
  algorithm, rather than on its practical implementation in a real system. However,
  we also briefly describe a practical workable implementation of our algorithm. ©
  2006 IEEE.'
publication: '*IEEE Transactions on Parallel and Distributed Systems*'
doi: 10.1109/TPDS.2009.114
links:
- name: URL
  url: https://www.scopus.com/inward/record.uri?eid=2-s2.0-77956226861&doi=10.1109%2fTPDS.2009.114&partnerID=40&md5=d3a3155bf61c04edb20da66c62d74d6f
---
