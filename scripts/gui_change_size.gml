///gui_change_size(speed,max)

var spd       = argument0;
var maxamount = argument1;

var negative = false;
var positive = false;

if(spd < 0) { negative = true; positive = false; }
if(spd > 0) { negative = false; positive = true; }

if(positive) {
    if(image_xscale < maxamount) {
        image_xscale += spd;
        image_yscale += spd;
    }
}

if(negative) {
    if(image_xscale > maxamount) {
        image_xscale += spd; // amount passed in is negative, so we still use +=
        image_yscale += spd;
    }
}
