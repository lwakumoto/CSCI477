// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_deck(number_of_cards){
	var deck_size = number_of_cards * 2;

	deck = ds_list_create();
	// create 16 cards
	for (var i = 0; i < deck_size; i++){
		var card = instance_create_layer(0,0,"Instances",obj_card);	
		ds_list_add(deck,card);
	}

	// Initialize card variables
	for (var i = 0; i < deck_size; i++){
		deck[| i].face_up = false; 	
		deck[| i].index = i;
		deck[| i].type = i % cards_number;
		deck[| i].visible = false;
	}

	// shuffle the card
	scr_shuffle_cards(deck);
	
	return deck
}