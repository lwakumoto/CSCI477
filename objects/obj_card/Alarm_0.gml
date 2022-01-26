
if (global.player_picks[0].type == id.type){
	global.player_picks[0].visible = false;
	global.player_picks[1].visible = false;
}
else{
	global.player_picks[0].face_up = false;
	global.player_picks[1].face_up = false;
}
global.player_picks[0] = noone;
global.player_picks[1] = noone;

global.game_state = states.WAITING;