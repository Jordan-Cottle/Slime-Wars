/// startConstruction(x, y, object, color)

var spawnX = snapToGrid(argument0);
var spawnY = snapToGrid(argument1);
var obj = argument2;
var colorString = argument3;

var constructionSite = instance_create_layer(spawnX, spawnY, "lyr_structures", obj);

constructionSite.color = colorString;
constructionSite.drawColor = selectColor(colorString);