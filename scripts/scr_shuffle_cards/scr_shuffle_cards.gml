// shuffle the cards in the deck and then "deal' them,
// placing thenm on the screen
function scr_shuffle_cards(_deck){
	
	// shuffle the deck
	randomize();
	ds_list_shuffle(_deck);
	
	var cards_x = 130;
	var cards_y = 100;
	var deck_size = ds_list_size(_deck);
	
	var cards = 1;
	for (var i = 0; i <deck_size; i ++){
		_deck[| i].x = cards_x;
		_deck[| i].y = cards_y;
		_deck[| i].index = 1;
		_deck[| i].visible = true;
		
		if(cards%4 == 0){
			cards_x = 130;
			cards_y += 160;
		}
		else {
			cards_x += 110;	
		}
		
		cards ++;
	}
}