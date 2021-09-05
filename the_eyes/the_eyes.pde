float angle;

void setup() {
    size(600,600);
    background(0);
    frameRate(30);
}


void CircleLoop1() {
  noFill();
      strokeWeight((10*abs(cos(radians(angle))))+1);
for(int i = 0; i < 1200; ){
  for(int j = 0; j < 1200;){
       stroke(0,random(255),random(150));
    pushMatrix();
    translate(i,j);
  circle(0, 0,90*sin(radians(angle)));
  popMatrix();
  if(j%2 == 0) j+=60;
  else j+=100;
}
if(i%2 == 0) i+=60;
else i+=100;
}
angle++;}

void draw() {
  for(int i = 0 ; i<5;i++){
CircleLoop1();
  }

}
