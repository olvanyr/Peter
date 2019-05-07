//set up camera
cam = view_camera[0];

view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);


smooth_value = 10;
//Set up Screenshake
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;