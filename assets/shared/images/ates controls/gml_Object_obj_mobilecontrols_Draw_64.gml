if (stopdrawing == 0)
{
    draw_sprite_ext(spr_z_button, keyboard_check(ord("Z")), zx, zy, button_scale, button_scale, 0, c_white, blending)
    draw_sprite_ext(spr_x_button, keyboard_check(ord("X")), xx, xy, button_scale, button_scale, 0, c_white, blending)
    draw_sprite_ext(spr_c_button, keyboard_check(ord("C")), cx, cy, button_scale, button_scale, 0, c_white, blending)
    draw_sprite_ext(spr_joybase, 0, joy_posx, joy_posy, joy_scale, joy_scale, 0, c_white, blending)
    draw_sprite_ext(spr_joystick, 0, joy_center_x, joy_center_y, joy_scale, joy_scale, 0, c_white, blending)
    if (isinoptions == 1)
    {
        if (atesreset != 50)
        {
            draw_sprite_ext(spr_black, 0, 0, 0, 1, 1, 0, c_white, 0.5)
            draw_sprite_ext(spr_z_button, 0, zxplace, zyplace, button_scaleplace, button_scaleplace, 0, c_red, blendingplace)
            draw_sprite_ext(spr_x_button, 0, xxplace, xyplace, button_scaleplace, button_scaleplace, 0, c_red, blendingplace)
            draw_sprite_ext(spr_c_button, 0, cxplace, cyplace, button_scaleplace, button_scaleplace, 0, c_red, blendingplace)
            draw_sprite_ext(spr_joybase, skinselect, joy_posxplace, joy_posyplace, joy_scaleplace, joy_scaleplace, 0, c_red, blendingplace)
        }
    }
}
