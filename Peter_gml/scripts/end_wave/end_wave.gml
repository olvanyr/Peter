/// @description end_wave
/// @arg room_to_go
/// @arg next_lvl

var _room = argument0;
var lvl = argument1;


alpha += 0.01

if alpha > 1
{
	room_goto(_room);
	global.lvl = lvl;
}