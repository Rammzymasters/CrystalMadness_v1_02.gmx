GRID = argument0;
closest_x = 0;
closest_y = 0;
object = argument1;
end_x = object.x%GRID-(GRID/2);
object.x = object.x+end_x;
end_y = object.y%GRID-(GRID/2);
object.y = object.y+end_y;
