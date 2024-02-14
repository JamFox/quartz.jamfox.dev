---
title: What to focus on - life is a multi armed bandit
draft: false
date: 2023-07-01
---

From: https://www.henrikkarlsson.xyz/p/multi-armed-bandit

A gambler faces a slot machine (“a one-armed bandit”), except this machine doesn’t have one arm—following some twisted dream logic, it has k arms, arms sticking out in every direction. Some of these arms have a high probability of paying out the jackpot, others are worse. But the gambler does not know which is which.

The gambler needs to learn new knowledge about the machines and simultaneously use what they have already learned to optimize their decisions. In the literature, these two activities are referred to as exploring and exploiting. You can’t do both things at the same time.

People tend to gravitate to different sides of the explore/exploit spectrum. If you are high on openness, like I am, exploring comes easy. But it is harder to make a commitment and exploit what you’ve learned about yourself and the world. Other people are more committed, but risk being too conventional in their choices. They miss better avenues for their effort. Most, however, tend to do less than optimal of both—not exploring, not exploiting; but doing things out of blind habit, and half-heartedly.

There is no way of living in direct contact with reality. The trick is to collide your mental model with the outside world as often as possible. This is what exploring does. This is what exploring does. You think you know the distribution of payoffs of the slot machines, but you try something new. You discover that you were wrong. You update your model.

1. Find people who understand things better than you and read what they have to say. Read with the intention of answering your questions. If you can’t find the answers, email them.

2. Perform experiments. By this I don’t mean do random things. I mean, STATE YOUR ASSUMPTIONS and FIND WAYS TO TEST IF THEY ARE FALSE. Most of the time, the slot machine of an experiment yields nothing. But that’s ok. A few will rearrange the world around you.

**Exploit: trimming everything but your top 1-3 priorities makes life richer**

What focus means is saying no to something that with every bone in your body you think is a phenomenal idea, you wake up thinking about it, but you say no to it because you are focusing on something else.

There are several algorithmic solutions to the multi-armed bandit problem, going back to Thompson sampling in the 1930s, all the way up to contemporary algorithms used in machine learning, such as EXP3 and Upper Confidence Bounds. What they all have in common is some version of: 1) prioritize exploration early on and 2) dial up exploitation as the situation becomes more clear. Like: if you are new in a city, it makes sense to meet as many people as possible.