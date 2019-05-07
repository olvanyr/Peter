
//update camera
var view_w_half = view_w * 0.5;
var view_h_half = view_h * 0.5;



//update object position
x += (xstart - x ) / smooth_value;
y += (ystart - y) / smooth_value;







//screen shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0,shake_remain -((1/shake_length)*shake_magnitude));

//update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);
camera_set_view_size(view_camera[0],view_w,view_h);
camera_set_view_border(view_camera[0],view_w,view_h);