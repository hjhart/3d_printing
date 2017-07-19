3d printing

Had to immediately square up my z-axis with this blog post: http://3dprinterwiki.info/z-axis-squaring/

Used "Quick Settings > PLA"
215 degrees, 60 degrees. printed 

butterfly prints at 195 / 50 

Had a helluva time getting adhering to work right out of the box. I could print the butterflies from 1, but I couldn't print anything whose GCODE was produced by Cura 2.6.

Used these settings: https://www.youtube.com/watch?v=IIHelSpeL7s

Finally a successful print! XYZ 20x20x20 box. 205 / 60. Bottom left corner.

Looks like the ~supports~ Infill density might've been a bit too small, because it looks like the top will not be successfully printing.

Also, the bottom was a bit fucked up because we were dragging out the original 3mm of extruded filament. try dragging the filament more (e.g. to a different corner) before printing the skirt.

Successfully cleaning the nozzle is not entirely easy! Step 1) Heat up nozzle to 200 C. Step 2) Raise it 100mm 3) Retract 3mm 4) Swipe with a thicker cloth

I think my nozzle may have been too tight (not enough room for paper) and that is why it was not adhering. 

Stop trying to use glue. Just get a nice clean bed.

Setting the temperature of the extruder first, then the bed allowed for both to heat at the same time. Prints start faster!

Next successful print was the 5mm step calibration.

Next attempt was the skull pencil holder @ 25%. 50% was too big.

Initial extrusion sucks.

Retracting 10mm before and having a skirt will make a difference. There has to be a trick to skirt 


Setting up OctoPi

https://www.raspberrypi.org/documentation/installation/installing-images/mac.md

Failed printing the hull of the ship. Decided retraction was a problem as was the small % of Infill. Trying again with a smaller model... Although, perhaps I should keep the size the same.

Also boosted initial layer speed up from 5 to 20.

Put initial layer speed back down to 10mm/s

OK!

So I am having some success wiht a new technique. A lot of variables changed.

O took off the buildtak surface from the aluminum bed. I goof off'ed the shit out of the aluminum bed. Put the silicon thermal pad down, then the glass on top. Nice!

I think a problem still exists that I am not on a level surface where I am printing. That should be improved upon tomorrow.



# Questions:
How do you handle initial extrusion?

