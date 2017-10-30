/// @description Create Pathfinding Grid

var cell_width = 32;
var cell_height = 32;

var hCell = room_width div cell_width;
var vCell = room_height div cell_height;

global.grid = mp_grid_create(0,0,hCell,vCell,cell_width,cell_height);

// Add walls to grid
mp_grid_add_instances(global.grid,obj_playerWall,false);
