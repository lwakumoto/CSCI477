/// @description Insert description here
// You can write your code in this editor
draw_set_font(Font1);

//draw_text(0,0,global.player_picks);

draw_set_color(c_red);

if (global.game_state == states.WIN){
	alarm[0] = -1;
	draw_text(room_width/2 - 100, room_height/2 - 100, "YOU WON");
}
else if (global.game_state == states.LOST){
	alarm[0] = -1;
	draw_text(room_width/2 - 100, room_height/2 - 100, "YOU WON");	
}

draw_set_color(c_white);
draw_text(90,0,"Time Left: " + string(cur_time));