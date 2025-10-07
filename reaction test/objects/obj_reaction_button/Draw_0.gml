draw_self();
draw_set_font(DungGeunMo);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_text(300, 300, "결과: "+ string(result) + "ms");
//draw_text(120, 260, string(iteration));
draw_text(300, 400, "평균: " + string(average / iteration) + "ms");
//draw_text(300, 500, "최고 기록: " + string(best));

if(status == 0){
    draw_circle_color(960, 720, 280, c_lime, c_lime, false);
    draw_text_transformed(960, 720, "클릭 또는 Space로" +"\n"+ "시작하세요", 0.7, 0.7, 0);
}

if(status == 1){
    draw_circle_color(960, 720, 280, c_dkgray, c_dkgray, false);
    draw_text(960, 720, "기다리세요..");
}

if(status == 2){
    with(obj_color){
        switch(col){
            case 0:
                draw_circle_color(960, 720, 280, c_red, c_red, false);
                break;
            
            case 1:
                draw_circle_color(960, 720, 280, c_yellow, c_yellow, false);
                break;
            
            case 2:
                draw_circle_color(960, 720, 280, c_blue, c_blue, false);
                break;
        }
        
    }
    
    draw_text(960, 720, "지금!");
}

if(status == 3){
    draw_text(960, 720, "클릭 또는 Space로" +"\n"+"다시 시작하세요");
}

if(status == 4){
    draw_circle_color(960, 720, 280, c_orange, c_orange, false);
    draw_text_transformed(960, 720, "너무 빨리 눌렀습니다!" + "\n" + "탭하여 다시 시작하세요", 0.6, 0.6, 0);
}