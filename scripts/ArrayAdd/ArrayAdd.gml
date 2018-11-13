/// @function ArrayAdd(array,value,...)
/// @description Returns the given array with elements appended to it. If an array is not given, the given value is returned.
/// @param {array} array to be appended
/// @param {real} value to be appended to array 

//  Returns the given array with elements appended to it.
//  If an array is not given, the given value is returned.
//  example 
/*
names[0] = "Charlie";
names[1] = "Juliett";
names[2] = "Mike";
 
names = array_add(names, "Oscar", "Romeo", "Victor");
 
//  names[0] == "Charlie"
//  names[1] == "Juliett"
//  names[2] == "Mike"
//  names[3] == "Oscar"
//  names[4] == "Romeo"
//  names[5] == "Victor"
*/
/// GMLscripts.com/license
{
    var r = argument[0];
    var o = array_length_1d(r) - 1;
    var i = argument_count;
    while (--i > 0) r[@o + i] = argument[i];
    return r;
}