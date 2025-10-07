touchCheck();
if(keyboard_check_pressed(vk_space)){
        if(status == 3 || status == 4) status = 0;
        else status++;
    }


switch (status) {
       
        case 1: 
            averCheck = false;
            iterCheck = false;
            react = 0;
            result = 0;
            if(time_set == false) StartTime();
            interval--;
            if(interval <= 0){
                canClick = true;
                status++
            }
        break;
        
        case 2:
            if(canClick == false) status = 4;
            react++; 
            
        break;
        
        case 3:
            if(!iterCheck){
                iteration += 1;
                iterCheck = true;
            }
            
            
            if(result > best) best = result;
                
    
            canClick = false;
            interval = 0;
            time_set = false;
            result = react * 10;
    
            if(!averCheck){
                average += result;
                averCheck = true;
            }
        break;
    
        case 4: // click while idle
            canClick = false;
            interval = 0;
            time_set = false;
            
    }
