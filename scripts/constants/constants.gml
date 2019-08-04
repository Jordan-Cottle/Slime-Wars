// step size for game grid
#macro gridStep 16

// maximum height for stackable objects
#macro maxHeight 8

// minimum alpha value for objects
#macro minAlpha 0.1

// slime flow rate
#macro flowRate 8

// slime checks for each spread (This is resource intensive, do not put higher than 8)
#macro spreadChecks 4

// alpha step per height for slime transparency
#macro alphaStep (1 - minAlpha) / maxHeight

// maximum slimer per tick for building
#macro maxBuild 5

#macro wallHeight 3

#macro towerRange 300