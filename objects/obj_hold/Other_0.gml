
// dequeue upon outside room
switch (pos) {
		case 1:
		ds_queue_dequeue(global.queue_notes_1);
		break;

		case 2:
		ds_queue_dequeue(global.queue_notes_2);
		break;
		
		case 3:
		ds_queue_dequeue(global.queue_notes_3);
		break;
		
		case 4:
		ds_queue_dequeue(global.queue_notes_4);
}

global.combo = 0;

instance_destroy();
