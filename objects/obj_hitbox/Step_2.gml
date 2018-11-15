/*
When the life variable reaches zero, the hitbox will be deleted.
When an object is destroyed, like we are doing above, 
the destroy event will be called (if present). 
The hitbox setup is complete—for the actual object, anyway!
*/
if(life <= 0){
    instance_destroy();
}