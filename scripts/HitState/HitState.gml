/*
This should look pretty familiar to you if you have been following along. 
First, we reduce the horizontal speed of the enemy until it reaches zero. 
Next, we count down hitStun, and return the enemy to their default normal state when hitStun reaches zero. 
Easy!
*/
//xSpeed = Approach(xSpeed,0,0.1);

hitStun --;

if(hitStun <= 0){
    currentState = states.normal;
}
