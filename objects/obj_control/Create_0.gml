
cards_number = 8;

global.deck = scr_create_deck(cards_number);
global.player_picks[0] = noone;
global.player_picks[1] = noone;



enum states{
	WAITING,
	PLAYING,
	WIN,
	LOST,
}
global.game_state = states.WAITING;

play_time = 60;
cur_time = play_time;
alarm[0] = room_speed * play_time;
cur_time = 60; 