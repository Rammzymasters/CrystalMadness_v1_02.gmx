//the variable init for the level editor
LEVEL_SCALE = 32; // const for the level editor scale

//constants for objects in the room array
NONE = 0;
PLAYER = 1;
TARGET = 2;
OBSTACLE = 3;
CRYSTAL_STRAIGHT = 4;
CRYSTAL_UPDOWN = 5;
CRYSTAL_ROTATE = 6;
CRYSTAL_SIDEWAYS = 7;
CRYSTAL_MIRROR = 8;

MAX_OBJECTS = 9;// the max amount of objects that can be selected

selected_item = 0; // the var for the currently selected item

for(var rx = 0; rx<room_width/LEVEL_SCALE; rx++)//initiator for the room array x
{
    for( var ry = 0; ry<room_height/LEVEL_SCALE; ry++)//initaitor for the room array y
    {
        this_room[rx,ry]=0;//array for storing the built room
    }
}

