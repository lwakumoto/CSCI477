
cards_number = 8;

global.deck = ds_list_create();

var deck_size = cards_number * 2;

for (var i = 0; i < deck_size; i++){
	var card = instance_create_layer(0,0,"Instances",obj_card);	
	ds_list_add(global.deck,card);
}

for (var i = 0; i < deck_size; i++){
	global.deck[| i].face_up = false; 	
	global.deck[| i].index = i;
	global.deck[| i].type = i % cards_number;
	global.deck[| i].visible = false;
	
}