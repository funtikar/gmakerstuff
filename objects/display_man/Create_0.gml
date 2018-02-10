/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7F51300C
/// @DnDArgument : "code" "ideal_width=0; //Doesn't matter because we are going to calculate this.$(13_10)ideal_height=270;$(13_10)$(13_10)//Aspect ratio$(13_10)aspect_ratio = display_get_width()/display_get_height();$(13_10)//Calculate new ideal width.$(13_10)ideal_width=round(ideal_height*aspect_ratio);$(13_10)//ideal_height=round(ideal_width/aspect_ratio);$(13_10)$(13_10)ideal_width=round(ideal_width);$(13_10)ideal_height=round(ideal_height);$(13_10) $(13_10)//Check to make sure our ideal width and height isn't an odd number, as that's usually not good.$(13_10) $(13_10) $(13_10)if(ideal_width & 1)$(13_10)  ideal_width++;$(13_10)     $(13_10)if(ideal_height & 1)$(13_10)  ideal_height++;$(13_10)$(13_10)$(13_10)$(13_10)//Setup all the view ports so I don't have to.$(13_10)globalvar Main_Camera;$(13_10)Main_Camera = camera_create_view(0,0,ideal_width,ideal_height,0,noone,0,0,0,0);$(13_10)camera_set_view_size(Main_Camera,ideal_width,ideal_height);$(13_10) $(13_10)for(var i=1; i<= room_last; i++)$(13_10){$(13_10)  if(room_exists(i))$(13_10)  {    $(13_10)        room_set_view_enabled(i,true);$(13_10)        room_set_viewport(i,0,true,0,0,ideal_width,ideal_height);$(13_10)        room_set_camera(i,0,Main_Camera);$(13_10)  }$(13_10)}$(13_10) $(13_10)surface_resize(application_surface,ideal_width,ideal_height);$(13_10)display_set_gui_size(ideal_width,ideal_height);$(13_10)window_set_size(ideal_width,ideal_height);$(13_10)$(13_10)room_goto_next();"
ideal_width=0; //Doesn't matter because we are going to calculate this.
ideal_height=270;

//Aspect ratio
aspect_ratio = display_get_width()/display_get_height();
//Calculate new ideal width.
ideal_width=round(ideal_height*aspect_ratio);
//ideal_height=round(ideal_width/aspect_ratio);

ideal_width=round(ideal_width);
ideal_height=round(ideal_height);
 
//Check to make sure our ideal width and height isn't an odd number, as that's usually not good.
 
 
if(ideal_width & 1)
  ideal_width++;
     
if(ideal_height & 1)
  ideal_height++;



//Setup all the view ports so I don't have to.
globalvar Main_Camera;
Main_Camera = camera_create_view(0,0,ideal_width,ideal_height,0,noone,0,0,0,0);
camera_set_view_size(Main_Camera,ideal_width,ideal_height);
 
for(var i=1; i<= room_last; i++)
{
  if(room_exists(i))
  {    
        room_set_view_enabled(i,true);
        room_set_viewport(i,0,true,0,0,ideal_width,ideal_height);
        room_set_camera(i,0,Main_Camera);
  }
}
 
surface_resize(application_surface,ideal_width,ideal_height);
display_set_gui_size(ideal_width,ideal_height);
window_set_size(ideal_width,ideal_height);

room_goto_next();