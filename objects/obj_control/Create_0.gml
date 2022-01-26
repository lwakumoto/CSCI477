
cards_number = 8;

global.deck = ds_list_create();
global.player_picks[0] = noone;
global.player_picks[1] = noone;

var deck_size = cards_number * 2;

// create 16 cards
for (var i = 0; i < deck_size; i++){
	var card = instance_create_layer(0,0,"Instances",obj_card);	
	ds_list_add(global.deck,card);
}

// Initialize card variables
for (var i = 0; i < deck_size; i++){
	global.deck[| i].face_up = false; 	
	global.deck[| i].index = i;
	global.deck[| i].type = i % cards_number;
	global.deck[| i].visible = false;
}

// shuffle the card
scr_shuffle_cards(global.deck);

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