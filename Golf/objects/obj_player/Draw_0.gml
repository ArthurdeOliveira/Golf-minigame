draw_self();
var xx = 10;
var yy = 10;
var width = xx+100;
var height = yy+20;

draw_set_color(c_black);
draw_rectangle(xx,yy,width,height,1);


barWidth = ((spd / maxSpd) * 100); 

draw_set_color(c_gray);
draw_rectangle(xx,yy,xx+ 100,height,0);
if(barWidth >= 0){
	if(barWidth < 40 && barWidth > 10){	
	draw_set_color(c_orange);
	}else if(barWidth > 60 && barWidth < 80){
	draw_set_color(c_maroon);	
	}else if(barWidth > 80){
	draw_set_color(c_red);	
	}else if(barWidth < 10){
	draw_set_color(c_yellow);
	}else{
	draw_set_color(c_green);	
	}
	
	draw_rectangle(xx,yy,xx+ barWidth,height,0);
	
}

draw_set_font(fnt_HUD);
draw_set_color(c_white);
draw_text(10,460,"Points: "+string(points));
draw_text(490,460,"Shots: "+string(shots));