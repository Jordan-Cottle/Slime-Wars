/// @description Update variables
height = round(size / sizePerHeight);

// spread slime to adjacent slimes
while(height > maxHeight){
	spread();
	height = size / sizePerHeight;
}

var alphaRange = 1 - minAlpha;
var sizeDelta = maxHeight - height;
alpha = height * .2 + minAlpha;
//alpha = alphaRange - (sizeDelta * (alphaRange/maxHeight)) + minAlpha;