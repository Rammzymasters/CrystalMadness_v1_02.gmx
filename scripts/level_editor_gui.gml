//generates the GUI for the level editor on create
for(a =0; a<MAX_OBJECTS; a++)
{
    button[a] = instance_create(20,a*150+70,obj_editor_selection);
    with button[a]
    {
        selection_value = other.a; // the numerical value of the button
        switch (selection_value)
        {
            case other.PLAYER:
                sprite_index = spr_player;
                break;
            case other.TARGET:
                sprite_index = spr_target;
                break;
            case other.OBSTACLE:
                sprite_index = spr_obstacle;
                break;
            case other.CRYSTAL_STRAIGHT:
            case other.CRYSTAL_UPDOWN:
            case other.CRYSTAL_ROTATE:
                sprite_index = spr_crystal_straight;
                break;
        }
    }
}
