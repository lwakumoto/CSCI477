/// @description Insert description here
// You can write your code in this editor
cur_time = 0;

for(var i = 0; i < ds_list_size(global.deck); i ++){
	if (global.deck[i].visible = true){
		global.game_state = states.LOST;
		break;
	}
}

if (global.game_state != states.LOST){
	global.game_state = states.WIN;	
}