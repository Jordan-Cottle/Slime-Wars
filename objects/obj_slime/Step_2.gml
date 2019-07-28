/// @description Update variables
height = round(size / sizePerHeight);

// spread slime to adjacent slimes faster
if(height > maxHeight){
	for(i = 0; i < 5 and height > maxHeight; i++){
		spread();
		height = size / sizePerHeight;
	}
}

alpha = height * .2 + minAlpha;