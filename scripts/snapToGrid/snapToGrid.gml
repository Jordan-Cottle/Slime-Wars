/// snapToGrid(value)

// offset by half grid size (to properly round to nearest)
// then drop least significant bits to snap to multiples of grid size
return (argument0) & ~(gridStep-1)