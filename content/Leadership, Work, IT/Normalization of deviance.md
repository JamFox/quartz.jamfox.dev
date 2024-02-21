---
title: Normalization of deviance
draft: false
date: 2023-02-14
---

[Original essay](https://danluu.com/wat/)

## Summary

So basically it explores how humans are really bad at taking the time to do things that have been proven to prevent failures in the context of IT workplaces. Humans will rationalize that taking shortcuts is the right, reasonable thing to do. There's a term for this: the normalization of deviance.

It comes down to the following things:
- We think that some rules are stupid and inefficient. Like why Enzo asks why we need git or why people ask why they can't push directly to master branch.
- Knowledge is imperfect and uneven. That means people who have been working at some place for a long time, know more than new people.
- We think that we are breaking rules for something good. If a production system is down, someone is more likely to make all changes in the production environment without testing things in the test environment, because they rationalize that getting prod running again is better than following the procedure which is slower.
- We think that rules don't apply to us or that we can be trusted to break the rules. Most human beings perceive themselves as good and decent people: surely we all think we are doing our best with good intentions.
- Colleagues are afraid to speak up. In most company cultures, people feel weird about giving feedback. Everyone has stories about a project that lingered on for months or years after it should have been terminated because no one was willing to offer explicit feedback. This is a problem even when cultures discourage meanness and encourage feedback: cultures of niceness seem to have as many issues around speaking up as cultures of meanness, if not more. In some places, people are afraid to speak up because they'll get attacked by someone mean. In others, they're afraid because they'll be branded as mean. It's a hard problem, but the redirection method of [[The One Minute Manager]] could be a solution. Some of the techniques explained in [[Never split the difference - negotiating]] can also help.
- Leadership usually waves problems away or directs info to be in favor of them but not in favor of solving the problems. 

The essay also proposes some solutions:
- The simplest option is to just do the right thing yourself and ignore what's going on around you.
- Pay attention to weak signals. That means the new hires, the students, the grunt workers etc. When someone new comes in, they don't know what they can do to make things happen or who they should talk to. They give out weak signals that are easily ignored.
- Resist the urge to be unreasonably optimistic. 
- Teach employees how to conduct emotionally uncomfortable conversations. Teach colleagues how to give and receive feedback.

#### Intro

It's well known that germs exist, and that washing hands properly very strongly reduces the odds of transmitting germs and thereby significantly reduces hospital mortality rates. Despite that, trained doctors and nurses still often don't do it. Interventions are required. Signs reminding people to wash their hands save lives. But when people stand at hand-washing stations to require others walking by to wash their hands, even more lives are saved. People can ignore signs, but they can't ignore being forced to wash their hands.
This mirrors a number of attempts at tech companies to introduce better practices. If you tell people they should do it, that helps a bit. If you enforce better practices via code review, that helps a lot.

The data are clear that **humans are really bad at taking the time to do things that are well understood to incontrovertibly reduce the risk of rare but catastrophic events.** We will rationalize that taking shortcuts is the right, reasonable thing to do. There's a term for this: the **normalization of deviance**.

#### The rules are stupid and inefficient

The example in the paper is about delivering medication to newborns. To prevent "drug diversion," nurses were required to enter their password onto the computer to access the medication drawer, get the medication, and administer the correct amount. In order to ensure that the first nurse wasn't stealing drugs, if any drug remained, another nurse was supposed to observe the process, and then enter their password onto the computer to indicate they witnessed the drug being properly disposed of.
Humans are bad at reasoning about how failures cascade, so we implement bright line rules about when it's safe to deploy. But the same thing that makes it hard for us to reason about when it's safe to deploy makes the rules seem stupid and inefficient.

#### Knowledge is imperfect and uneven

People don't automatically know what should be normal, and when new people are onboarded, they can just as easily learn deviant processes that have become normalized as reasonable processes.

_new person joins_

**new person**: WTF WTF WTF WTF WTF

**old hands**: yeah we know we're concerned about it

**new person**: WTF WTF wTF wtf wtf w...

_new person gets used to it_

_new person #2 joins_

**new person #2**: WTF WTF WTF WTF

**new person**: yeah we know. we're concerned about it.

#### I'm breaking the rule for the good of my patient

The second worst outage I can think of occurred when someone noticed that a database service was experiencing slowness. They pushed a fix to the service, and in order to prevent the service degradation from spreading, they ignored the rule that you should do a proper, slow, staged deploy. Instead, they pushed the fix to all machines. It's hard to argue against that. No one wants their customers to have degraded service! Unfortunately, the fix exposed a bug that caused a global outage.

#### The rules don't apply to me/You can trust me

Most human beings perceive themselves as good and decent people, such that they can understand many of their rule violations as entirely rational and ethically acceptable responses to problematic situations. They understand themselves to be doing nothing wrong, and will be outraged and often fiercely defend themselves when confronted with evidence to the contrary.

#### Workers are afraid to speak up

In most company cultures, people feel weird about giving feedback. Everyone has stories about a project that lingered on for months or years after it should have been terminated because no one was willing to offer explicit feedback. This is a problem even when cultures discourage meanness and encourage feedback: cultures of niceness seem to have as many issues around speaking up as cultures of meanness, if not more. In some places, people are afraid to speak up because they'll get attacked by someone mean. In others, they're afraid because they'll be branded as mean. It's a hard problem.

#### Leadership withholding or diluting findings on problems

I was shocked the first time I saw this happen. I must have been half a year or a year out of school. I saw that we were doing something obviously non-optimal, and brought it up with the senior person in the group. He told me that he didn't disagree, but that if we did it my way and there was a failure, it would be really embarrassing. He acknowledged that my way reduced the chance of failure without making the technical consequences of failure worse, but it was more important that we not be embarrassed. Now that I've been working for a decade, I have a better understanding of how and why people play this game, but I still find it absurd.

## Solutions

The simplest option is to just do the right thing yourself and ignore what's going on around you. That has some positive impact, but the scope of your impact is necessarily limited. Next, you can convince your team to do the right thing.
But if the incentives are aligned against you, it will require an ongoing and probably unsustainable effort to keep people doing the right thing. In that case, the problem becomes convincing someone to change the incentives, and then making sure the change works as designed.

It's problematic to reward creating new features more richly than doing critical grunt work. When I talked to managers, they often agreed, too. But nevertheless, the people who get promoted are disproportionately those who ship shiny new things. But, for the same reasons that normalization of deviance occurs, that information seems to have no way to reach upper management.
It's sort of funny that this ends up being a problem about incentives. As an industry, we spend a lot of time thinking about how to incentivize consumers into doing what we want. But then we set up incentive systems that are generally agreed upon as incentivizing us to do the wrong things, and we do so via a combination of a game of telephone and cargo cult diffusion.

The paper has specific sub-sections on how to prevent normalization of deviance, which I recommend reading in full.

-   Pay attention to weak signals
	- If a VP decides something is screwed up, people usually listen. It's a strong signal.
	- When someone new comes in, they don't know what levers they can pull to make things happen or who they should talk to almost by definition. They give out weak signals that are easily ignored.
-   Resist the urge to be unreasonably optimistic
-   Teach employees how to conduct emotionally uncomfortable conversations
-   System operators need to feel safe in speaking up
-   Realize that oversight and monitoring are never-ending
