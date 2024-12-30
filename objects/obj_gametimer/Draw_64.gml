var timer_arr, ty, i;

if (!global.toggleTimer || room == rm_disclaimer || room == rm_initializer || room == rm_introVideo || room == rm_preinitializer || room == rm_startupLogo || room == rm_mainmenu || (instance_exists(obj_option) || instance_exists(obj_option_keyconfig)) || (instance_exists(obj_inputController) && (obj_inputController.showtext || obj_inputController.disconnectScreen)))
    exit;

timer_arr = [];

if (global.option_timer_type >= 1)
    array_push(timer_arr, makeString(global.SaveMinutes, global.SaveSeconds, global.SaveFrames));

if (in_level && global.option_timer_type != 1)
    array_push(timer_arr, makeString(global.LevelMinutes, global.LevelSeconds, global.LevelFrames));

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_set_color(c_white);
draw_set_font(global.smalltimerfont);
ty = 0;

for (i = 0; i < array_length(timer_arr); i++)
{
    draw_text(944, 532 - ty, timer_arr[i]);
    ty += (string_height("1") + 4);
}
