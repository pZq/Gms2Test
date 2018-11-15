/*
This is all the code we need for the hurtbox. Pretty simple, right? 
We want to set the image_alpha to 0.5 so that the hurtbox is transparent. 
The owner variable will be tied to the id of whatever object created it, 
such as the oPlayer object. More on that in a bit. 
Finally, the xOffset and yOffset is used to line up the hurtbox with its owner. 
Now we need to create the hurtbox and give it an owner.
*/
image_alpha = 0.5;
owner = -1;
xOffset = 0;
yOffset = 0;