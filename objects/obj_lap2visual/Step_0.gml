var ty;

if (down)
{
    ty = 90;
    y = approach(y, ty, movespeed);
    
    if (y >= ty && alarm[0] == -1)
        alarm[0] = 120;
}
else
{
    ty = -sprite_height;
    y = approach(y, ty, movespeed);
    
    if (y <= ty)
        instance_destroy();
}

x = 480;
