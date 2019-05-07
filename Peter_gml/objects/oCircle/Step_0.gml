// Orbital motion
angle += orbital_spd;
if(angle >= 360) angle -= 360;

// Update position
x = lengthdir_x(orbit, angle) + center_x;
y = lengthdir_y(orbit, angle) + center_y;

center_y += spd;