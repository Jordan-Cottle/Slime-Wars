/// @description Update variables
height = (size / sizePerHeight) + heightAt(x, y);

// spread slime to adjacent slimes
while(height > maxHeight){
	spread();
	height = size / sizePerHeight;
}
