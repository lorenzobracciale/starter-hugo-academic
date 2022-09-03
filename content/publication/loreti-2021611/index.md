---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'SRv6-PM: A Cloud-Native Architecture for Performance Monitoring of SRv6 Networks'
subtitle: ''
summary: ''
authors:
- P. Loreti
- A. Mayer
- P. Lungaroni
- F. Lombardo
- C. Scarpitta
- G. Sidoretti
- L. Bracciale
- M. Ferrari
- S. Salsano
- A. Abdelsalam
- R. Gandhi
- C. Filsfils
tags:
- Big data;  Computer architecture;  Data visualization;  Digital storage;  Monitoring;  Network
  architecture;  Packet loss;  Routers
- Control of networks;  Effective solution;  Large-scale deployment;  Management planes;  Networking
  architecture;  Performance monitoring;  Time granularities;  Traditional management
- Internet protocols
categories: []
date: '2021-01-01'
lastmod: 2022-09-03T10:52:57+02:00
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
publishDate: '2022-09-03T08:52:57.145425Z'
publication_types:
- '2'
abstract: 'Segment Routing over IPv6 (SRv6 in short) is a networking architecture
  suitable for both IP backbones and datacenters. The research, standardization and
  implementation of this architecture are actively progressing and SRv6 is already
  adopted in a number of large scale deployments. Effective solutions for Performance
  Monitoring (PM) of SRv6 networks are strongly needed and there is a lot of activity
  in this area. A full blown Performance Monitoring solution needs to include: i)
  Data Plane (as needed to measure metrics such as packet loss and delay); ii) Control
  Plane (to send commands to the monitoring entities in the nodes); iii) Management
  Plane (e.g., to collect the measured metrics). Moreover, Big-Data tools and solutions
  can be applied inside or above the traditional Management Plane boundaries to store
  and analyze the collected data. In this article we describe SRv6-PM, a solution
  for Performance Monitoring of SRv6 networks that deals with all the aspects discussed
  above. SRv6-PM features a cloud-native architecture that supports: i) the ingestion,
  processing, storage and visualization of PM data using Big-Data tools; ii) the SDN-based
  control of network routers to drive the performance monitoring operations. In particular,
  we focus on Loss Monitoring and consider a solution capable of tracking single packet
  loss events operating in near-real time (e.g., with a time granularity in the order
  of 10-20 seconds). SRv6-PM is released as open source. We offer a re-usable and
  extensible platform that can be automatically deployed in different environments,
  from a single host to multiple servers on private/public clouds and includes a set
  of Big-Data tools and the SDN control plane. We also provide a reproducible Data
  Plane environment for PM experiments in SRv6 networks based on the Mininet emulator.
  © 2004-2012 IEEE.'
publication: '*IEEE Transactions on Network and Service Management*'
doi: 10.1109/TNSM.2021.3052603
links:
- name: URL
  url: https://www.scopus.com/inward/record.uri?eid=2-s2.0-85099726291&doi=10.1109%2fTNSM.2021.3052603&partnerID=40&md5=3643fb5c20414e4a56aeb1c1782373e3
---
