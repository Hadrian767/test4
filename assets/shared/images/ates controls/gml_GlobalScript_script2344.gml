function ates_addkeys() //gml_Script_ates_addkeys
{
    with (obj_mobilecontrols)
    {
        virtual_key_z = virtual_key_add(zx, zy, (27 * button_scale), (29 * button_scale), 90)
        virtual_key_x = virtual_key_add(xx, xy, (27 * button_scale), (29 * button_scale), 88)
        virtual_key_c = virtual_key_add(cx, cy, (27 * button_scale), (29 * button_scale), 67)
        virtual_key_joy = virtual_key_add((joy_posx - back_size * joy_scale), (joy_posy - back_size * joy_scale), ((59 + back_size) * joy_scale + back_size * joy_scale), ((59 + back_size) * joy_scale + back_size * joy_scale), 126)
    }
}

