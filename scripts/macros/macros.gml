// step size for game grid
#macro gridStep 16

// slime flow rate (how many steps slimes wait before making another spread check)
#macro flowRate 8
// slime checks for each spread (This affects their tendency to spread out evenly)
#macro spreadChecks 4 // resource intensive, do not set higher than 8

// maxmimum height for slimes
#macro maxHeight 16
// minimum alpha value for objects
#macro minAlpha 0.1
// alpha step per height for slime transparency
#macro alphaStep (1 - minAlpha) / maxHeight

// maximum slime per tick for building
#macro maxBuild 5

// how much walls increase the terrain height
#macro wallHeight 3

// maximum range for player towers
#macro towerRange 200

#macro playerColor "green"

#macro spawnerCostIncrement 25