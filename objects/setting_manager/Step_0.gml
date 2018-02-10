/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4BDF98D5
/// @DnDArgument : "code" "if (keyboard_check_released(vk_f4))$(13_10)	{$(13_10)		if window_get_fullscreen()$(13_10)			{$(13_10)			window_set_fullscreen(false);$(13_10)			}$(13_10)		else$(13_10)			{$(13_10)			window_set_fullscreen(true);$(13_10)			}$(13_10)	}"
if (keyboard_check_released(vk_f4))
	{
		if window_get_fullscreen()
			{
			window_set_fullscreen(false);
			}
		else
			{
			window_set_fullscreen(true);
			}
	}