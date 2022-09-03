---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'TooLate: Cryptographic Data Access Control for Offline Devices through Efficient
  Key Rotation'
subtitle: ''
summary: ''
authors:
- L. Bracciale
- P. Loreti
- E. Raso
- G. Bianchi
tags:
- Cryptography
- Control techniques;  CryptoGraphics;  Data access control;  Decryption keys;  Key
  rotation;  Offline;  Offline access control;  Reencryptions;  System use;  User
  revocation
- Access control
categories: []
date: '2021-01-01'
lastmod: 2022-09-03T10:52:56+02:00
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
publishDate: '2022-09-03T08:52:56.640328Z'
publication_types:
- '1'
abstract: The design of an access control technique for devices not connected to the
  Internet can present some very difficult challenges. Among others, how to properly
  handle user revocation stands out. In this paper, we present TooLate, a cryptosystem
  that allows an authority to grant access to a user over a set of encrypted files
  stored on an offline device. The authority has no connection with the device but
  is able to centrally manage access control to the remote datastore, providing users
  with decryption keys whose validity is limited in time and only to specific resources.
  The system uses a lightweight cryptographic technique suitable for non-tamper-proof,
  low-power devices. An active security module periodically re-encrypts the entire
  datastore using keys dynamically generated from a hash chain. Key rotation ensures
  that, even by tampering with the device, attackers cannot gain access to the data
  without a valid key, as the re-encryption occurs and they arrive too late. © 2021
  ACM.
publication: '*CPSIoTSec 2021 - Proceedings of the 2nd Workshop on CPS and IoT Security
  and Privacy, co-located with CCS 2021*'
doi: 10.1145/3462633.3483982
links:
- name: URL
  url: https://www.scopus.com/inward/record.uri?eid=2-s2.0-85120900295&doi=10.1145%2f3462633.3483982&partnerID=40&md5=6561ec069591b49028f91d31a1f8489f
---
