---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'Performance Monitoring with Ĥ2: Hybrid Kernel/eBPF data plane for SRv6 based
  Hybrid SDN'
subtitle: ''
summary: ''
authors:
- A. Mayer
- P. Loreti
- L. Bracciale
- P. Lungaroni
- S. Salsano
- C. Filsfils
tags:
- Internet protocols;  Routers
- Berkeley packet filters;  Conceptual levels;  Control planes;  Hybrid approach;  Packet
  forwarding;  Performance monitoring;  Software routers;  Throughput improvement
- Linux
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
publishDate: '2022-09-03T08:52:57.391434Z'
publication_types:
- '2'
abstract: 'Segment Routing with IPv6 (SRv6) is a leading Hybrid SDN (HSDN) architecture,
  as it fully exploits standard IP routing and forwarding both in the control plane
  and in the data plane. In this paper we design, implement and evaluate a programmable
  data plane solution for Linux routers called HIKE (HybrId Kernel/eBPF forwarding),
  integrated in an HSDN/SRv6 architecture. HIKE integrates the conventional Linux
  kernel packet forwarding with custom designed eBPF/XDP (extended Berkeley Packet
  Filter/eXtreme Data Path) bypass to speed up performance of SRv6 software routers.
  Thus, in addition to the hybrid IP/SDN forwarding, we foster an additional hybrid
  approach inside a Linux forwarding engine combining eBPF/XDP and kernel based forwarding,
  taking the best from both worlds. Therefore, considering the two different conceptual
  levels of hybridization, we call our overall solution Hybrid squared or Ĥ2. We have
  applied the Ĥ2 solution to Performance Monitoring (PM) in Hybrid SDNs, and we show
  how our HIKE data plane architecture supports SRv6 networking and Performance Monitoring
  (in particular Loss Monitoring) allowing a significant increase in performance:
  our implementation results show a remarkable throughput improvement (5x) with respect
  to a conventional Linux based solution. © 2020'
publication: '*Computer Networks*'
doi: 10.1016/j.comnet.2020.107705
links:
- name: URL
  url: https://www.scopus.com/inward/record.uri?eid=2-s2.0-85097794139&doi=10.1016%2fj.comnet.2020.107705&partnerID=40&md5=90bc823db7646ed111093bf513a2273c
---
