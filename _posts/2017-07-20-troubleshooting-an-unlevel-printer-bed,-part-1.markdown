--- 
layout: post
title: "Troubleshooting an Unlevel Printer Bed, Part 1"
date: 2017-07-20 15:23:07 -0700
---

{% include links.html %}

Starting from when I first got my [Monoprice Maker Select v2][printer], my bed has been warped, and therefore incredibly hard to level.

My first step, after reading quite a few reddit posts, was to buy a [borosilicate glass plate][glass] to compensate for a more than likely warped aluminum bed that shipped.

I installed the glass plate, and much to my dismay when I was leveling the bed I noticed a strange pattern: when I was leveling with a piece of paper, I was tightening one side completely, and loosening the other side completely.

This is probably easier to describe with a picture:

[insert picture of wobbly plate here]

So it wasn't so much that the plate wasn't ever able to be level, but rather one side was lopsided.

**Theory One: Z-Axis was Misaligned**

Okay, let's put this theory to the test. Turn off your printer. Using the screws that control the z-axis height, twist both the left and right one until the nozzle has reached the absolute stop. If you look at the printer from the back, you'll see there are z-axis stops. You'll want to hit those.

Once you get to the top, turn the machine on. Then, connect using [Octoprint][octoprint] and bring the nozzle back down to Z-axis home. Try leveling.

Result: **theory failed**. After leveling right before printing I had the same experience. The left front was fully loosened, and the front right was fully tightened. So much so that the front-left was not catching anymore, and I could hardly tighten the front-right.

The back nuts was reversed. The back-right was fully loosened, and the back-left was fully tightened. 

**Theory Two: The Surface my Printer is on is Not Level**

Okay, to be fair, it is sitting on my floor which is 100 year old hard wood. I didn't really expect it to be level. 

Most people recommend going to Ikea and getting their lack tables. But instead, I searched for "Lack table" on amazon, found [this table][lack_table], and purchased it next-day shipping. Great! No need to go to ikea, and we will be level in no time.

So I cleaned and tightened everything to recalibrate the level, and my table is level with some [ghetto coasters][coasters] under my "lack" table.

Result: **theory failed**. Same thing happened to me after leveling. But, what I realized was when I leveled when the plate was cool everything was great. It was "level" and the nuts appeared to be tightened approximately the same amount. 

Once I heated the bed and nozzle up, however, the level was completely off. Either the aluminum plate is causing the glass plate to distort or the glass plate is warping due to heat.

**Theory Three: With thermal expansion, the glass or aluminum plate goes whacky**

Still under investigation, will post later with results...

**Update!** Read [next post in the series]({% post_url 2017-07-21-troubleshooting-an-unlevel-printer-bed,-part-2 %})
