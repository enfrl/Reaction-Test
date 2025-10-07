function StartTime(){
    randomize();
    interval = random_range(4.1, 6.0) * 60;
    time_set = true;
}

time_set = false;
canClick = false; // click while idle

// 0: ready 1: idle 2: push 3: result
status = 0;
react = 0;
result = 0;
iteration = 0;
iterCheck = false;
average = 0;
averCheck = false;
best = 0;

function touchCheck(){
    if(device_mouse_check_button_pressed(0, mb_left)){
    var mx = device_mouse_x_to_gui(0); 
    var my = device_mouse_y_to_gui(0);

    if (point_distance(x, y, mx, my) <= 280) {
        if(status == 3 || status == 4) status = 0;
            else status++;
    } }
}
