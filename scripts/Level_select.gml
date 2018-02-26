//global.maxLevel = 9;
button_pos[0,0] = 300;
button_pos[0,1] = 80;
button_pos[1,0] = 750;
button_pos[1,1] = 80;
button_pos[2,0] = 1200;
button_pos[2,1] = 80;
button_pos[3,0] = 300;
button_pos[3,1] = 380;
button_pos[4,0] = 750;
button_pos[4,1] = 380;
button_pos[5,0] = 1200;
button_pos[5,1] = 380;
button_pos[6,0] = 300;
button_pos[6,1] = 680;
button_pos[7,0] = 750;
button_pos[7,1] = 680;
button_pos[8,0] = 1200;
button_pos[8,1] = 680;
for(a =0; a<global.maxLevel; a++)
{
    button = instance_create(button_pos[a,0],button_pos[a,1],obj_button_level_select);
    with button
    {
        image_index=other.a;
        image_speed=0;
        level = other.a;
    }
}
