if(other.x<x)//if the beam is coming in from the left
{
   from_left = true; 
}
else //if the beam is coming in from the right
{
    from_left = false;
}
with other
{
    instance_destroy();//destroys the beam
}
if(from_left)
{
    global.beam_dir = 0;
    beam_x = x+sprite_width/2;
}
else
{
    global.beam_dir = 180;
    beam_x = x-sprite_width/2;
}
var beam = instance_create(beam_x,y,obj_beam);
part_emitter_region(global.beam_part_system,global.crystal_emit,x-100,x+100,y+100,y-100,0,0);
part_emitter_burst(global.beam_part_system,global.crystal_emit,global.crystal_part,30);

