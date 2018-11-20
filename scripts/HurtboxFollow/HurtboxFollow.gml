/// @function HutboxFollow
/// @description Make hurtbox follow the object.

/*
Alright, so this little chunk of code makes sure the hurtbox is following our player around. 
Using with and other is probably a new concept for you, so let me explain. When you use with 
followed by an object name (or specific object ID) the code following runs as if that object were running it. 
So when we say with(hurtbox) we are updating the x and y position from that particular oHurtbox 
object that we have stored in our hurtbox variable.

Since we are using with we can also use other. When using other in this context, 
it is referring back to the original object this code is running from. 
In this case, that is our oPlayer object.
*/

with(hurtbox){
    x = other.x + xOffset;
    y = other.y + yOffset;
}