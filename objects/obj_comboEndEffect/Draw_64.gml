var img_ind;

if (!global.ShowHUD || is_tutorial())
    exit;

draw_sprite(spr_comboEnd, 0, x, y);
img_ind = floor(title_cur + title_index);
draw_sprite(lang_get_sprite(spr_comboTitles), img_ind, x, y);

if (showVery)
    draw_sprite(spr_comboOver, 0, x - 65, y - 6);

draw_set_font(global.smallfont);
draw_set_halign(fa_center);
draw_text(x, y + 70, comboScoreMax);
