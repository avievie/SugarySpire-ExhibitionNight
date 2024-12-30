var real_sub;

title_index += image_speed;
title_index = wrap(title_index, 0, 1);

if (global.ComboTime > 0 && global.Combo > 0)
    y = approach(y, 265, 10);

if (!timer--)
{
    real_sub = max(subtractBy, 10);
    
    if (comboScore > 0)
    {
        comboScore -= real_sub;
        create_collect_effect(x + camera_get_view_x(view_camera[0]), y + camera_get_view_y(view_camera[0]), undefined, real_sub);
    }
    
    if (comboScore <= 0)
    {
        comboScore = 0;
        alarm[1] = 50;
        timer = 50;
    }
    else
    {
        timer = 1;
    }
}
