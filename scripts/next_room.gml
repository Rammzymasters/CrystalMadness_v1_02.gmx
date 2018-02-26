switch(global.current_level)
{
    case 0:
    room_goto(rm_first);
    break;
    case 1:
    room_goto(rm_second);
    break;
    default:
    case 2:
    room_goto(rm_third);
    break;
    case 3:
    room_goto(rm_fourth);
    break;
    case 4:
    room_goto(rm_fifth);
    break;
    default:
    case 5:
    room_goto(rm_sixth);
    break;
    case 6:
    room_goto(rm_seventh);
    break;
    case 7:
    room_goto(rm_eighth);
    break;
    default:
    case 8:
    room_goto(rm_nineth);
    break;
    room_goto(room_main_menu);
    
}

