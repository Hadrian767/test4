if (ateseditv2 == 0)
{
    var mouse_count = 4
    for (var i = -1; i < mouse_count; i++)
    {
        if (device_mouse_y_to_gui(i) >= joy_posy && device_mouse_y_to_gui(i) <= (joy_posy + 59 * joy_scale) && device_mouse_x_to_gui(i) >= joy_posx && device_mouse_x_to_gui(i) <= (joy_posx + 59 * joy_scale) && device_mouse_check_button(i, mb_left))
        {
            joy_center_x = device_mouse_x_to_gui(i) - 21 * joy_scale
            joy_center_y = device_mouse_y_to_gui(i) - 21 * joy_scale
        }
        if ((device_mouse_y_to_gui(i) <= joy_posy || device_mouse_y_to_gui(i) >= (joy_posy + 59 * joy_scale)) && device_mouse_x_to_gui(i) >= joy_posx && device_mouse_x_to_gui(i) <= (joy_posx + 59 * joy_scale) && device_mouse_check_button(i, mb_left))
            joy_center_x = device_mouse_x_to_gui(i) - 21 * joy_scale
        if (joy_center_y == (joy_posy + (59 * joy_scale / 2 - 41 * joy_scale / 2)) && device_mouse_y_to_gui(i) <= joy_posy && device_mouse_x_to_gui(i) >= joy_posx && device_mouse_x_to_gui(i) <= (joy_posx + 59 * joy_scale) && device_mouse_check_button(i, mb_left))
            joy_center_y = joy_posy + (59 * joy_scale / 2 - 41 * joy_scale / 2) - 45
        if (joy_center_y == (joy_posy + (59 * joy_scale / 2 - 41 * joy_scale / 2)) && device_mouse_y_to_gui(i) >= joy_posy && device_mouse_x_to_gui(i) >= joy_posx && device_mouse_x_to_gui(i) <= (joy_posx + 59 * joy_scale) && device_mouse_check_button(i, mb_left))
            joy_center_y = joy_posy + (59 * joy_scale / 2 - 41 * joy_scale / 2) + 45
        if (device_mouse_y_to_gui(i) >= joy_posy && device_mouse_y_to_gui(i) <= (joy_posy + 59 * joy_scale) && device_mouse_x_to_gui(i) >= joy_posx && device_mouse_x_to_gui(i) <= (joy_posx + 59 * joy_scale + joyrange) && device_mouse_check_button(i, mb_left))
            joy_center_y = device_mouse_y_to_gui(i) - 21 * joy_scale
        if (joy_center_x == (joy_posx + (59 * joy_scale / 2 - 41 * joy_scale / 2)) && device_mouse_y_to_gui(i) >= joy_posy && device_mouse_y_to_gui(i) <= (joy_posy + 59 * joy_scale) && device_mouse_x_to_gui(i) >= joy_posx && device_mouse_check_button(i, mb_left))
            joy_center_x = joy_posx + (59 * joy_scale / 2 - 41 * joy_scale / 2) + 45
        if (device_mouse_y_to_gui(i) >= joy_posy && device_mouse_y_to_gui(i) <= (joy_posy + 59 * joy_scale) && device_mouse_x_to_gui(i) <= joy_posx && device_mouse_check_button(i, mb_left))
            joy_center_y = device_mouse_y_to_gui(i) - 21 * joy_scale
        if (joy_center_x == (joy_posx + (59 * joy_scale / 2 - 41 * joy_scale / 2)) && device_mouse_y_to_gui(i) >= joy_posy && device_mouse_y_to_gui(i) <= (joy_posy + 59 * joy_scale) && device_mouse_x_to_gui(i) <= joy_posx && device_mouse_check_button(i, mb_left))
            joy_center_x = joy_posx + (59 * joy_scale / 2 - 41 * joy_scale / 2) - 45
    }
    if (!keyboard_check(ord("~")))
    {
        joy_center_x = joy_posx + (59 * joy_scale / 2 - 41 * joy_scale / 2)
        joy_center_y = joy_posy + (59 * joy_scale / 2 - 41 * joy_scale / 2)
    }
}
performance = 0
if (goback == 1)
{
    isinoptions = 0
    zx = zxplace
    zy = zyplace
    xx = xxplace
    xy = xyplace
    cx = cxplace
    cy = cyplace
    shiftx = shiftxplace
    shifty = shiftyplace
    joy_posx = joy_posxplace
    joy_posy = joy_posyplace
    button_scale = button_scaleplace
    joy_scale = joy_scaleplace
    blending = blendingplace
    virtual_key_delete(virtual_key_z)
    virtual_key_delete(virtual_key_x)
    virtual_key_delete(virtual_key_c)
    virtual_key_delete(virtual_key_joy)
    ates_addkeys()
    ini_open("touch.ini")
    ini_write_real("CONFIG", "zx", zx)
    ini_write_real("CONFIG", "zy", zy)
    ini_write_real("CONFIG", "xx", xx)
    ini_write_real("CONFIG", "xy", xy)
    ini_write_real("CONFIG", "cx", cx)
    ini_write_real("CONFIG", "cy", cy)
    ini_write_real("CONFIG", "joy_posx", joy_posx)
    ini_write_real("CONFIG", "joy_posy", joy_posy)
    ini_write_real("CONFIG", "button_scale", button_scale)
    ini_write_real("CONFIG", "joy_scale", joy_scale)
    ini_write_real("CONFIG", "blending", blending)
    ini_write_real("CONFIG", "shiftx", shiftx)
    ini_write_real("CONFIG", "shifty", shifty)
    ini_write_real("CONFIG", "skin", skinselect)
    ini_write_real("CONFIG", "musicoff", performance)
    ini_write_real("CONFIG", "shiftlock", shiftlock)
    ini_write_real("CONFIG", "debugbutton", debugbutton)
    ini_close()
    ateseditv2 = 0
    atesreset = 50
    goback = 0
}
if (reset == 1)
{
    zxplace = 800
    zyplace = 390
    xxplace = 680
    xyplace = 420
    cxplace = 820
    cyplace = 280
    debugx = 780
    debugy = 4
    escx = 875
    escy = 4
    shiftxplace = 700
    shiftyplace = 300
    button_scaleplace = 3.3
    joy_scaleplace = 3.3
    joy_posxplace = 48
    joy_posyplace = 312.5
    blendingplace = 0.5
    joy_center_x = joy_posx + (59 * joy_scale / 2 - 41 * joy_scale / 2)
    joy_center_y = joy_posy + (59 * joy_scale / 2 - 41 * joy_scale / 2)
    joy_size = 19.675
    shiftlock = 0
    ini_open("touch.ini")
    ini_write_real("CONFIG", "zx", zx)
    ini_write_real("CONFIG", "zy", zy)
    ini_write_real("CONFIG", "xx", xx)
    ini_write_real("CONFIG", "xy", xy)
    ini_write_real("CONFIG", "cx", cx)
    ini_write_real("CONFIG", "cy", cy)
    ini_write_real("CONFIG", "joy_posx", joy_posx)
    ini_write_real("CONFIG", "joy_posy", joy_posy)
    ini_write_real("CONFIG", "button_scale", button_scale)
    ini_write_real("CONFIG", "joy_scale", joy_scale)
    ini_write_real("CONFIG", "blending", blending)
    ini_write_real("CONFIG", "shiftx", shiftx)
    ini_write_real("CONFIG", "shifty", shifty)
    ini_write_real("CONFIG", "shiftlock", shiftlock)
    ini_close()
    reset = 0
}
if (isinoptions == 1)
{
    if (ateseditv2 == 1)
    {
        virtual_key_delete(virtual_key_z)
        virtual_key_delete(virtual_key_x)
        virtual_key_delete(virtual_key_c)
        virtual_key_delete(virtual_key_shift)
        virtual_key_delete(virtual_key_joy)
        virtual_key_delete(virtual_key_esc)
        virtual_key_zedit = virtual_key_add(zxplace, zyplace, (27 * button_scale), (29 * button_scale), 96)
        virtual_key_xedit = virtual_key_add(xxplace, xyplace, (27 * button_scale), (29 * button_scale), 97)
        virtual_key_cedit = virtual_key_add(cxplace, cyplace, (27 * button_scale), (29 * button_scale), 98)
        virtual_key_shiftedit = virtual_key_add(shiftxplace, shiftyplace, (27 * button_scale), (29 * button_scale), 99)
        virtual_key_joyedit = virtual_key_add(joy_posxplace, joy_posyplace, (59 * joy_scale), (59 * joy_scale), 100)
        cool = 3
        ateseditv2 = 2
    }
    if (ateseditv2 == 2)
        cool -= 1
    if (ateseditv2 == 2 && cool == 0)
    {
        cool = 3
        virtual_key_delete(virtual_key_zedit)
        virtual_key_delete(virtual_key_xedit)
        virtual_key_delete(virtual_key_cedit)
        virtual_key_delete(virtual_key_shiftedit)
        virtual_key_delete(virtual_key_joyedit)
        virtual_key_zedit = virtual_key_add(zxplace, zyplace, (27 * button_scale), (29 * button_scale), 96)
        virtual_key_xedit = virtual_key_add(xxplace, xyplace, (27 * button_scale), (29 * button_scale), 97)
        virtual_key_cedit = virtual_key_add(cxplace, cyplace, (27 * button_scale), (29 * button_scale), 98)
        virtual_key_shiftedit = virtual_key_add(shiftxplace, shiftyplace, (27 * button_scale), (29 * button_scale), 99)
        virtual_key_joyedit = virtual_key_add(joy_posxplace, joy_posyplace, (59 * joy_scale), (59 * joy_scale), 100)
    }
    if (keyboard_check(vk_numpad0) && ateseditv2 == 2 && (!keyboard_check(vk_numpad3)) && (!keyboard_check(vk_numpad2)) && (!keyboard_check(vk_numpad1)) && (!keyboard_check(vk_numpad4)))
    {
        zxplace = device_mouse_x_to_gui(0) - 19.5 * button_scale + 16
        zyplace = device_mouse_y_to_gui(0) - 18 * button_scale + 16
        atesreset = 49
    }
    if (keyboard_check(vk_numpad1) && ateseditv2 == 2 && (!keyboard_check(vk_numpad3)) && (!keyboard_check(vk_numpad2)) && (!keyboard_check(vk_numpad4)) && (!keyboard_check(vk_numpad0)))
    {
        xxplace = device_mouse_x_to_gui(0) - 19.5 * button_scale + 16
        xyplace = device_mouse_y_to_gui(0) - 18 * button_scale + 16
        atesreset = 49
    }
    if (keyboard_check(vk_numpad2) && ateseditv2 == 2 && (!keyboard_check(vk_numpad3)) && (!keyboard_check(vk_numpad4)) && (!keyboard_check(vk_numpad1)) && (!keyboard_check(vk_numpad0)))
    {
        cxplace = device_mouse_x_to_gui(0) - 19.5 * button_scale + 16
        cyplace = device_mouse_y_to_gui(0) - 18 * button_scale + 16
        atesreset = 49
    }
    if (keyboard_check(vk_numpad3) && ateseditv2 == 2 && (!keyboard_check(vk_numpad4)) && (!keyboard_check(vk_numpad2)) && (!keyboard_check(vk_numpad1)) && (!keyboard_check(vk_numpad0)))
    {
        shiftxplace = device_mouse_x_to_gui(0) - 19.5 * button_scale + 16
        shiftyplace = device_mouse_y_to_gui(0) - 18 * button_scale + 16
        atesreset = 49
    }
    if (keyboard_check(vk_numpad4) && ateseditv2 == 2 && (!keyboard_check(vk_numpad3)) && (!keyboard_check(vk_numpad2)) && (!keyboard_check(vk_numpad1)) && (!keyboard_check(vk_numpad0)))
    {
        joy_posxplace = device_mouse_x_to_gui(0) - 29.5 * joy_scale + 16
        joy_posyplace = device_mouse_y_to_gui(0) - 29.5 * joy_scale + 16
        atesreset = 49
    }
    if (atesreset > 0 && ateseditv2 == 2 && (!keyboard_check(vk_numpad0)) && (!keyboard_check(vk_numpad1)) && (!keyboard_check(vk_numpad2)) && (!keyboard_check(vk_numpad3)) && (!keyboard_check(vk_numpad4)))
        atesreset -= 0.3
    if (atesreset < 1 && ateseditv2 == 2)
    {
        ateseditv2 = 0
        atesreset = 50
        virtual_key_delete(virtual_key_zedit)
        virtual_key_delete(virtual_key_xedit)
        virtual_key_delete(virtual_key_cedit)
        virtual_key_delete(virtual_key_shiftedit)
        virtual_key_delete(virtual_key_joyedit)
        ates_addkeys()
    }
}
if keyboard_check(ord("E"))
    room_goto(rm_steamworks_chem_01)
if instance_exists(obj_crayon_minigame)
    stopdrawing = 1
else
    stopdrawing = 0
