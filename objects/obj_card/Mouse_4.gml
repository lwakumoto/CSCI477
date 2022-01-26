/// @description wHEN A CARD IS CLIKED, FLIP ITS FACE AND CHNAGE THE SPRITE
if (visible && global.game_state == states.WAITING){
	face_up = true;
	if (global.player_picks[0] == noone){
		global.player_picks[0] = self;	
	}
	else{
		global.player_picks[1] = self;
		global.game_state = states.PLAYING;
	
		alarm[0] = 120;
	}

}