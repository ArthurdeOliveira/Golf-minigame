//Variáveis:a
spd = 0;
maxSpd = 5;
barSpd = 0.08;
frictionSpd= 0.02;
ballSize = 24;
points = 0;
shots = 5;
spawner = false;

//Estados:
isPressed = false;
null = 0;
mesure = 1;
shot = 2;
target = 3;
state = null;


//Animação barra de força:
animState = 0;
increase = 0;
decrease = 1;


//Movimentação da bola:
anim = false;
xspd = 0;
yspd = 0;

if(spawner == false){
	x = irandom(room_width - ballSize);
	y = irandom(room_height - ballSize);
	while(place_meeting(x,y,obj_wall)){
		x = irandom(room_width - ballSize);
		y = irandom(room_height - ballSize);
		spawner = true;
	}
	
}

