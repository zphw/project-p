
// check accuracy for type 1 notes
function check_accuracy_1(_queue) {
	if (!ds_queue_empty(_queue)) {
		inst = ds_queue_head(_queue);

		if (inst.type == 1) {
			
			// check accuracy based on distance between the note and judgement line
			if ((global.judgement_line_y - inst.y >= 150 && global.judgement_line_y - inst.y <= 220) || (inst.y - global.judgement_line_y >= 80 && inst.y - global.judgement_line_y <= 100)) {
			
				ds_queue_dequeue(_queue);
				instance_create_layer(inst.x, global.judgement_line_y, "key_layer", obj_click_good);
				instance_destroy(inst);
				
				global.score += global.note_full_score * 0.6;
				global.combo++;
				
				//show_debug_message("GOOD");
			
			} else if ((global.judgement_line_y - inst.y >= 0 && global.judgement_line_y - inst.y < 150) || (inst.y - global.judgement_line_y >= 0 && inst.y - global.judgement_line_y < 80)) {
			
				ds_queue_dequeue(_queue);
				instance_create_layer(inst.x, global.judgement_line_y, "key_layer", obj_click_perfect);
				instance_destroy(inst);
				
				global.score += global.note_full_score;
				global.combo++;
				
				//show_debug_message("PERFECT");
			
			
			} else if ((global.judgement_line_y - inst.y > 220 && global.judgement_line_y - inst.y < 300)|| inst.y - global.judgement_line_y > 100) {
			
				ds_queue_dequeue(_queue);
				
				inst.sprite_index = spr_note_bad;  // to fade out
				//instance_destroy(inst);
				
				global.combo = 0;
				
				//show_debug_message("BAD");
			}

		}
	}
}

// check accuracy for type 2 notes
function check_accuracy_2(_queue) {
	if (!ds_queue_empty(_queue)) {
		inst = ds_queue_head(_queue);
		
		if (inst.type == 2) {
			
			if ((global.judgement_line_y - inst.y >= 0 && global.judgement_line_y - inst.y < 50) || (inst.y - global.judgement_line_y >= 0 && inst.y - global.judgement_line_y < 50)) {
				ds_queue_dequeue(_queue);
				instance_create_layer(inst.x, global.judgement_line_y, "key_layer", obj_click_perfect);
				instance_destroy(inst);
				
				global.score += global.note_full_score;
				global.combo++;
				
				//show_debug_message("HOLD PERFECT");
			}
		}
	}
}
