relative_angle=0;//the relative beam angle to the crystal
relative_angle=point_direction(x,y,other.x,other.y)-image_angle;
if(relative_angle<0)//makes the relative angle a positive number between 0 and 360
{
    relative_angle+=360;
}
global.debug_angle=relative_angle
if(relative_angle>90&&relative_angle<270)//if the beam is coming in from the left
{
   from_left = true; 
   //if(global.debug ==0)
   {
    global.debug = 'Left'
   }
}
else //if the beam is coming in from the right
{
    from_left = false;
    //if(global.debug ==0)
   {
    global.debug = 'right'
   }
}
with other
{
    instance_destroy();//destroys the beam
}
if(from_left)
{
    beam_x = x+lengthdir_x(sprite_width/2,image_angle);
    beam_y = y+lengthdir_y(sprite_width/2,image_angle);
    global.beam_dir = image_angle;
}
else
{
    beam_x = x+lengthdir_x(sprite_width/2,image_angle-180);
    beam_y = y+lengthdir_y(sprite_width/2,image_angle-180);
    global.beam_dir = image_angle-180;
}

var beam = instance_create(beam_x,beam_y,obj_beam_angle);
part_emitter_region(global.beam_part_system,global.crystal_emit,x-100,x+100,y+100,y-100,0,0);
part_emitter_burst(global.beam_part_system,global.crystal_emit,global.crystal_part,30);
