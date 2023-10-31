class Particle {
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle() {
    myX=250;
    myY= 250;
    mySpeed= Math.random()*10;
    myAngle = Math.random()*2*Math.PI;
    myColor= color(255);
  }
    void show() {
    fill(myColor);
    ellipse((float)myX,(float)myY,10,10);
  }
  void move() {
    myX = myX +((Math.cos(myAngle))*mySpeed);
    myY = myY +((Math.sin(myAngle))*mySpeed);
    if (myX>490)
      myX = 250;
    else if (myX<10)
      myX = 250;
    if (myY>490)
      myY = 250;
    else if (myY<10)
      myY =250;
  }
}  
class OddballParticle extends Particle {
  OddballParticle() {
    myX = 250;
    myY = 250;
    mySpeed = Math.random()*2;
    myAngle = Math.random()*2*Math.PI;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void show() {
    fill(myColor);
    ellipse((float)myX,(float)myY,20,20);
    fill(0);
    ellipse((float)myX-3,(float)myY-3,3,3);
    ellipse((float)myX+3,(float)myY-3,3,3);
    ellipse((float)myX-3,(float)myY+3,3,3);
    ellipse((float)myX+3,(float)myY+3,3,3);
  }
}

Particle [] sky = new Particle[200];

void setup(){
  size(500,500);
  noStroke();
  for (int i = 0; i<sky.length; i++)
    sky[i] = new Particle();
  for (int i = 169; i<sky.length; i++)
    sky[i] = new OddballParticle();
}

void draw(){
  background (0);
  for (int i = 0; i<sky.length; i++){
    sky[i].show();
    sky[i].move();
  }
}
