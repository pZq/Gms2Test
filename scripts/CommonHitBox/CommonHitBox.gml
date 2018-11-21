/*

Quick recap of what's happening here. We check to see if we actually have a hitbox at the time, 
and if so, we then check all hurtbox objects to see if any of them are colliding with this particular 
hitbox instance. When using with it's important to note that if you just use the name of an object, 
like oHurtbox, instead of the instance ID of an object, you will be running code from within 
ALL instances of that object. Now we are two layers deep, and are checking the collision from 
the hurtbox, so when we use other it is no longer referencing the main object (the oPlayer object) 
that is running all of this code, but instead the object that is one layer above this one 
(the oHitbox object).
*/
//hitbox

if(hitbox != -1){
    with(hitbox){
        x = other.x + xOffset;
        y = other.y + yOffset;

        //check to see if the hurtbox is touching your hitbox        
        with(obj_hurtbox){
							
            if(place_meeting(x,y,other) && other.owner != owner){
                //ignore check
                //checking collision from the hitbox object
                with(other){
                    //check to see if your target is on the ignore list
                    //if it is on the ignore list, dont hit it again
                    for(i = 0; i < ds_list_size(ignoreList); i ++){
                        if(ignoreList[|i] = other.owner){
                            ignore = true;
                            break;
                        }
                    }

                    //if it is NOT on the ignore list, hit it, and add it to
                    //the ignore list
                    if(!ignore){
                        other.owner.hit = true;
                        other.owner.hitBy = id;
                        ds_list_add(ignoreList,other.owner);
                    }
                }
            }
        }
    }
}