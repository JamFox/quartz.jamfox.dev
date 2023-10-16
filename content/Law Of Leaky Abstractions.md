---
title: Law Of Leaky Abstractions
draft: false
date: 2020-09-10
---

From: http://www.joelonsoftware.com/articles/LeakyAbstractions.html

TCP attempts to provide a complete abstraction of an underlying unreliable IP network, but sometimes, the network leaks through the abstraction and you feel the things that the abstraction can’t quite protect you from, but the abstraction doesn't convey the leakage to the user.

This is but one example of what was dubbed the Law of Leaky Abstractions.

All non-trivial abstractions, to some degree, are leaky.

"Learn how to do it manually first, then use the wizzy tool to save time." (humanize, mechanize, automate from [[How to Live]])

So the abstractions save us time working, but they don't save us time learning.