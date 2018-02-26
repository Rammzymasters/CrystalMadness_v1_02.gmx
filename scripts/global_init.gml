global.beam_dir = 0; //the beam starting direction
global.beam_speed = 20; //the beam starting speed

//Particle effects
global.beam_part_system =  part_system_create();// beam particle system
    part_system_depth(global.beam_part_system,-20);
    part_system_position(global.beam_part_system,0,0);
global.beam_part = part_type_create();//beam particles
    part_type_shape(global.beam_part, pt_shape_spark);
    part_type_scale(global.beam_part,1,1);
    part_type_size(global.beam_part,0.50,1,-.001,0);
    part_type_alpha2(global.beam_part,1,.5);
    part_type_direction(global.beam_part,global.beam_dir-130,global.beam_dir-160,0,0);
    part_type_orientation(global.beam_part,0,359,10,0,true);
    part_type_life(global.beam_part,10,30);
global.beam_part_dest = part_type_create();//beam destruction particles
    part_type_shape(global.beam_part_dest, pt_shape_spark);
    part_type_scale(global.beam_part_dest,1,1);
    part_type_size(global.beam_part_dest,.15,.5,-.01,0);
    part_type_alpha2(global.beam_part_dest,1,.1);
    part_type_direction(global.beam_part_dest,global.beam_dir-130,global.beam_dir-160,0,0);
    part_type_orientation(global.beam_part_dest,0,359,10,0,true);
    part_type_life(global.beam_part_dest,10,30);
    part_type_colour2(global.beam_part_dest,$494949,$cecece);
    part_type_gravity(global.beam_part_dest,.3,270);
global.beam_emit = part_emitter_create(global.beam_part_system);//beam emitter

global.crystal_part= part_type_create();//crystal particles
    part_type_shape(global.crystal_part, pt_shape_star);
    part_type_scale(global.crystal_part,1,1);
    part_type_size(global.crystal_part,1,2,-.01,0);
    part_type_alpha2(global.crystal_part,1,.2);
    part_type_direction(global.crystal_part,0,359,0,10);
    part_type_orientation(global.crystal_part,0,359,10,0,true);
    part_type_life(global.crystal_part,10,20);
    part_type_colour2(global.crystal_part,$2CFC68,$debeff);
    part_type_gravity(global.crystal_part,.3,270);
    
colors [0,0] = $ff4c4c; //Dark Red
colors [0,1] = $ffd4d4; //Light Red
colors [1,0] = $ff9907; //Dark Orange
colors [1,1] = $fff3e3; //Light Orange
colors [2,0] = $2cf268; //Dark Green
colors [2,1] = $e9ffef; //Light Green
colors [3,0] = $01fffc; //Dark Blue
colors [3,1] = $cffff7; //Light Blue
colors [4,0] = $c516ff; //Dark Purple
colors [4,1] = $debeff; //Light Purple

//for(var i = 0; i<5; i++)
{
var i = 0;
    global.teleport_part[i] = part_type_create();
        part_type_shape(global.teleport_part[i], pt_shape_star);
        part_type_scale(global.teleport_part[i],1,1);
        part_type_size(global.teleport_part[i],.25,1,-.01,0);
        part_type_alpha2(global.teleport_part[i],1,.1);
        part_type_direction(global.teleport_part[i],15,165,10,10);
        part_type_speed(global.teleport_part[i],5,15,-.01,0);
        //part_type_orientation(global.teleport_part[i],0,359,10,0,true);
        part_type_life(global.teleport_part[i],30,60);
        part_type_colour2(global.teleport_part[i],colors[4,0],colors[0,1]);
}
global.teleport_emit_player = part_emitter_create(global.beam_part_system); //player teleport emitter
global.teleport_emit_target = part_emitter_create(global.beam_part_system); //target teleport emitter
global.crystal_emit = part_emitter_create(global.beam_part_system);//crystal emitter

global.debug = 0;//open debug variable
global.debug_angle = 0;//debug variable for the angle of the crystal

global.beam_life = 60; //life of the beam in steps

global.current_level = 0;
global.maxLevel = 1;//highest level completed


global.v_travel = 800;// the travel distance of the viewport
global.camera_move = false;//if the camera can move

global.MAX_ROOMS = 9; //max number of rooms in the game
for(var i=0; i<global.MAX_ROOMS; i++)
{
    global.highscore[i] = "";//the highscore for each level (stored in a string)
}
global.last_try="";

//Level Editor global variables
blankLevel[0,0] = 0;// empty array to be used as a placeholder
global.built_levels[0] = blankLevel; //array of levels that will (hopefully) save levels
global.saved_levels = 0; //the number of saved levels in the game
global.editor_selection = 0; //the selected object to place in the level editor

global.LEVEL_SCALE = 64;
