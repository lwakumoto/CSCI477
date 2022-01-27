// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_all_card_paired(_deck){
	for(var i = 0; i < ds_list_size(_deck); i ++){
		if (_deck[| i].visible == true){
			return false;	
		}
	}
	return true;
}