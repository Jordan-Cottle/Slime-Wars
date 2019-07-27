// findAdjacent(lookFor, exclude)

var xDiff = 0;
var yDiff = 0;

// do not select own position or terrain
while(xDiff == 0 and yDiff == 0 or !place_empty(x+xDiff, y+yDiff, argument1)){ 
	xDiff = gridStep * irandom_range(-1, 1);
	yDiff = gridStep * irandom_range(-1, 1);
}

// use instance variables for reference after script is complete
targetX = x+xDiff;
targetY = y+yDiff;

return instance_place(targetX, targetY, argument0);