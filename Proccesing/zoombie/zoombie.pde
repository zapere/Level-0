float leftPupilX = 242;
float leftPupilY = 242;
float rightPupilX = 419;
float rightPupilY = 100;
int liX = 241;
int liY = 263;
float iR = 12.5;
float iD = 0;
int riX = 418;
int riY = 251;
float pR = 7.5;
float eR = 0;

void setup()
{
   pD = 2*pR;
  //noStroke();
  PImage face = loadImage("face.jpeg");
  size(face.width, face.height);
  image(face, 0, 0);
}

void draw ()
{
  PImage face = loadImage("face.jpeg");
  image(face, 0, 0);
  leftPupilX=mouseX;

  leftPupilY=mouseY;

  rightPupilX=mouseX;

  rightPupilY=mouseY;

  //iris
  fill(255, 255, 255);
  ellipse(242, 262, 40, 40);
  ellipse(417, 250, 40, 40);
  //pupil
  fill(255, 255, 255);
  int x=liX-mouseX;
  int y=liY-mouseY;
  float r=sqrt(x*x+y*y);
  if (r<iR-pR) {
    ellipse(leftPupilX, leftPupilY, 15, 15);
  } else {
    float t = atan2(y, x);
    float pX = eR*cos(t)-liX;
    float pY = eR*sin(t)-liY; 
    ellipse(pX, pY, pD, pD);
  }
  x=riX-mouseX;
  y=riY-mouseY;
  r=sqrt(x*x+y*y);
  if (r<iR-pR) { 
    ellipse(rightPupilX, rightPupilY, 15, 15);
  }
  println(""+mouseX+", "+mouseY);
}

