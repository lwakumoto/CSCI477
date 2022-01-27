/// @description Insert description here
// You can write your code in this editor
cur_time = 0;

var _state = scr_all_card_paired(global.deck);
if (_state){
	global.game_state = states.WIN;	
}
else{
	global.game_state = states.LOST;	
}