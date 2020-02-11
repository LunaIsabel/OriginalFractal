int bob = 0;
boolean boy = true;

public void setup(){
	size(900, 900);
}

public void draw(){
	background(bob, bob, bob);
	fractal(450, 450, 450);
	if(boy == true){
		bob += 4;
	}
	if(bob > 255){
		boy = false;
	}
	if(boy == false){
		bob -= 4;
	}
	if(bob < 0){
		boy = true;
	}

}

public void fractal(int x, int y, int len){
	stroke(250, 250, 250);
	ellipse(x, y, len, len);
	if(len > 10){
		fractal(x + len/ 2, y - len / 2, len / 2);
		fractal(x - len/ 2, y - len / 2, len / 2);
		fractal(x + len/ 2, y + len / 2, len / 2);
		fractal(x - len/ 2, y + len / 2, len / 2);
	}
}