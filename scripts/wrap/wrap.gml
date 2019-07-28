/// wrap(value, min, max)

var value = argument0;
var minimum = argument1;
var maximum = argument2;

if(value > maximum){
	value = minimum;	
}else if(value < minimum){
	value = maximum;	
}

return value;