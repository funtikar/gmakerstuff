if (keyboard_check(vk_right) && place_free(x + collspeed,y))
{
x = x + 4
image_speed = 4/3
sprite_index = spr_heroright
}

if (keyboard_check(vk_up) && place_free(x,y - collspeed))
{
y = y - 4
image_speed = 4/3
sprite_index = spr_hup
}

if (keyboard_check(vk_down) && place_free(x,y + collspeed))
{
y = y + 4
image_speed = 4/3
sprite_index = spr_hdown
}

if (keyboard_check(vk_left) && place_free(x - collspeed,y))
{
x = x - 4
image_speed = 4/3
sprite_index = spr_hereleft
}

if (keyboard_check(vk_nokey))
{
image_speed = 0
image_index = 0
}