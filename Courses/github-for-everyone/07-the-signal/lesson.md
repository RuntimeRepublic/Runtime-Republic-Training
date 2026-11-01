# The Signal, a Phone App That Tells You When It's Your Turn

![The Signal, a Phone App That Tells You When It's Your Turn](../../../Images/github-for-everyone/07-the-signal.png)

Course: GitHub for Everyone
Lesson: 07 of 07
Status: Draft
Runtime: about 7 and a half minutes
Image: 07-the-signal.png
Podcast: Not recorded
Sources: None
Approved by: —
License: CC BY 4.0
Audience: Teens and adults; follows Bonus Essay One
Image header: The Signal | GitHub for Everyone • Bonus 2

---

In our last essay, we imagined writing a law the way programmers write code, out in the open on GitHub, where every change and every reason is visible. But we ended with a problem. Most people will never check a GitHub page on their own. A workshop with the doors wide open doesn't help if nobody knows the workshop exists.

So today, let's talk about the signal.

Think about your school. Imagine the principal could speak over the loudspeaker, but only into one classroom at a time. If there's a field trip just for fourth graders, only the fourth grade rooms hear the announcement. Everyone else keeps working, undisturbed. Nobody gets buried in announcements that have nothing to do with them, and the people who need to know, hear it right away.

That's the idea behind an app called Liberty Cadence, with the motto "Creating Habits that Secure Liberty." It's an iPhone app being built right now, in a GitHub repository, using the same tools we've learned about in this series. And its job is to be the signal, a tap on the shoulder that says, something is happening that affects you, and now is your moment.

Let's look at how it's designed to work.

Every person in America lives inside several voting districts at once, like circles inside circles. You live in a state. Inside that state, you live in one district for the United States House of Representatives. In Kansas, you also live in one district for the State Senate and one for the State House. Each of those districts has a number. Your neighbor across town might share your congressional district but have a completely different State House district.

When you set up the app, you type in your address one time. The app sends it to a free public service run by the United States Census Bureau, which answers back with your district numbers, something like Kansas, Congressional District 2, State Senate District 19, State House District 57. Then comes the most important part. The app keeps those district numbers and throws away your address. It doesn't store it. It doesn't send it anywhere else. There's no account and no password. As far as the app is concerned, you're simply a phone that lives in House District 57.

Those district numbers become something like radio channels. Your phone tunes in to the channel for everyone, the channel for Kansas, and the channels for each of your districts. When someone needs to reach the people of State House District 57, say a hearing is scheduled on a bill that changes how their county collects property taxes, they send a message to that one channel. Only phones tuned to House District 57 light up. Everyone else stays quiet.

Now connect that back to our bill on GitHub. When a pull request opens that would change a bill affecting certain districts, or a committee schedules a hearing, or a vote is coming, the people in those districts can get a signal at the moment it matters, not three weeks later when the decision is already made.

But Liberty Cadence aims for something deeper than alerts. Remember Part Five, where we talked about how tools can change the way people work? This app is built around a simple idea about how people change: habits.

People who study habits describe a loop with four steps. First comes a cue, something that reminds you to act. Then a routine, the action itself. Then a reward, a good feeling for having done it. And finally a craving, wanting that good feeling again, which brings you back to the next cue.

The habit Liberty Cadence is designed to build is small. Once a month, spend about five minutes finding out where your tax dollars went. The plan is a monthly check-in nicknamed Tax Transparency Tuesday. You'd see three short cards, one for local government, one for state, and one for federal, showing where a slice of your money went. One tap records that you checked. Then comes the reward. Your monthly streak grows. You might earn a badge. You can jot down one line answering the question, what surprised you? And over time, you start to feel something valuable: I know where the money goes.

Notice a few careful choices in that design. Streaks count months, not days, because nobody needs another app nagging them every morning. Alerts are planned to be capped at a couple a week, with quiet hours, so the signal stays meaningful instead of turning into noise. And the records of your check-ins are kept on your own phone.

Now, honesty matters, so let's be clear about where things stand. As of today, this app is still being built. The foundation, the code that turns an address into district numbers and decides which channels a phone should join, is written and tested. The next milestone is the first real signal: a message sent to one district reaching test phones in different districts. The monthly habit features come after that. Like our bill from the last essay, the app has gates, and each step has to be approved by a human before the work moves forward.

There are also real questions it will have to answer well. Who gets to send alerts, and how do you keep them fair and accurate, no matter which side of an issue someone is on? How do you make sure people trust an app with even their district numbers? How do you avoid becoming one more source of noise in an already noisy world? Good engineering doesn't make those questions disappear. It writes them down, out in the open, and answers them on purpose.

So let's bring our whole series together. Git is the magical save button. GitHub is the workshop where people build things together in the open. Its tools, commits, branches, pull requests, reviews, and issues, let strangers cooperate without losing track of who did what and why. Those same tools could help voters and lawmakers write laws in the open. And a well-designed signal can make sure the right people hear about it at the right time, without giving up their privacy.

The tools are not the point. People are the point. A repository can hold a perfect draft, and a phone can deliver a perfect alert, but neither one matters until a person decides to show up, read, ask a question, and speak.

Here's your final thinking question for the series. If your phone tapped you on the shoulder once a month and said, here's where your money went, what do you think you'd want to do next?

<!-- series-navigation: start -->

---

### Continue reading

[← Previous essay](../06-writing-a-law-like-code/lesson.md) · [Series index](../README.md)

[All series in this repository](../../README.md) · [Repository home](../../../README.md)

<!-- series-navigation: end -->
