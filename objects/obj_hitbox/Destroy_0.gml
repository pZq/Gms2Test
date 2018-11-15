/*
This ensures that the owner of the hitbox stops trying to interact with it once it has been deleted, 
and it deletes the ignoreList when it is no longer needed. 
If the list is not deleted, it can cause memory leaks, which is no bueno.
*/
owner.hitbox = -1;
ds_list_destroy(ignoreList);