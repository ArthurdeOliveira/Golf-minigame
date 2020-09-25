//Controles
depth = -y;
if(mouse_check_button_pressed(mb_left)){
	if(isPressed = false){
		isPressed = true;	
	}
}
	

if(isPressed){
	isPressed = false;
	if(state == null){
		state = mesure;
	}else if(state == mesure){
		state = shot;
	}
}

if(state = mesure){
	if(animState == increase){
		spd += barSpd;
		if(spd >= maxSpd){
			spd = maxSpd;
			animState = decrease;
		}
	}else{
		spd -= barSpd;
		if(spd <= 0){
			spd = 0;
			animState = increase;
		}
	}
}

if(state = shot){
	state = target;
	var angle = point_direction(x,y,mouse_x,mouse_y);
	xspd = cos(degtorad(angle));
	yspd = -sin(degtorad(angle));
}

if(state = target){
	if(x+xspd*spd+ballSize/2 >= room_width || !place_free(x+xspd*spd,y)){
		xspd*=-1;
	}else if(x+xspd*spd+ballSize/2 <= 0 || !place_free(x+xspd*spd,y)){
		xspd*=-1;
	}
	
	if(y+yspd*spd+ballSize/2 >= room_height || !place_free(x,y+yspd*spd)){
		yspd*=-1;
	}else if(y+yspd*spd+ballSize/2 <= 0 || !place_free(x,y+yspd*spd)){
		yspd*=-1;
	}
	
	
anim = true;
x+=xspd*spd;
y+=yspd*spd;
spd-= frictionSpd;

if(spd < 2){
	if(place_meeting(x,y,obj_hole)){
		
				shots = 5;			
				points+=1;
	spawner = false;
	if(spawner == false){
		spd = 0;
	x = irandom(room_width - ballSize);
	y = irandom(room_height - ballSize);
	while(place_meeting(x,y,obj_wall)){
		x = irandom(room_width - ballSize);
		y = irandom(room_height - ballSize);
		spawner = true;
	}
	
}
	}
}
	if(spd <= 0){
		spd = 0;
		anim = false;
		state = null;
		shots--;
	}
}
if(shots == 0) || keyboard_check(ord("R")){
	room_restart();
}

if(anim ){
	image_speed = 1;
	timeline_loop = 2;
}else{
	image_speed = 0;	
}