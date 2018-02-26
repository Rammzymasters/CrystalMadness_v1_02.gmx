if(other.y<y)//if the beam is coming in from the top
{
   from_up = true; 
}
else //if the beam is coming in from the bottom
{
    from_up = false;
}
with other
{
    instance_destroy();//destroys the beam
}
if(from_up)
{
    global.beam_dir = 90;
    beam_y = y-sprite_height/2;
}
else
{
    global.beam_dir = 270;
    beam_y = y+sprite_height/2;
}
var beam = instance_create(x,beam_y,obj_beam);
part_emitter_region(global.beam_part_system,global.crystal_emit,x-100,x+100,y+100,y-100,0,0);
part_emitter_burst(global.beam_part_system,global.crystal_emit,global.crystal_part,30);

