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
//hurtbox

with(hurtbox){
    x = other.x + xOffset;
    y = other.y + yOffset;
}

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
/*
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
*/

//animation 
//FrameReset(); 



