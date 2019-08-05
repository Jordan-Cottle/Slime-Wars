/// wrap(value, min, max)

var value = argument0;
var minimum = argument1;
var maximum = argument2;

if(value > maximum){
	value = (value - (maximum+1)) + minimum;	
}else if(value < minimum){
	value = (value - (minimum-1)) + maximum;	
}

return value;