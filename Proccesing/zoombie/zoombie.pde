float leftPupilX = 242;
float leftPupilY = 262;
float rightPupilX = 417;
float rightPupilY = 250;
int liX = 242;
int liY = 262;
float iR = 50;
float iD = 0;
int riX = 417;
int riY = 250;
float pR = 17.5;
float eR = iR-pR;

void setup()
{
  iD=iR*2;
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
  fill(random(mouseX), random(mouseX), random(mouseY));
  ellipse(liX, liY, iD, iD);
  ellipse(riX, riY, iD, iD);
  //pupil
  fill(random(mouseX), random(mouseY), random(mouseX));
  int x=liX-mouseX;
  int y=liY-mouseY;
  float r=sqrt(x*x+y*y);
  float pD = pR*2;
  if (r<iR-pR) {
    ellipse(leftPupilX, leftPupilY, pD, pD);
  } else {

    float t = atan2(y, x);
    float pX = liX-eR*cos(t);
    float pY = liY-eR*sin(t); 
    ellipse(pX, pY, pD, pD);
    
  } 

  x=riX-mouseX;
  y=riY-mouseY;
  r=sqrt(x*x+y*y);
  if (r<iR-pR) { 
    ellipse(rightPupilX, rightPupilY, pD, pD);
  } else {
 float t = atan2(y, x);
    float pX = riX-eR*cos(t);
    float pY = riY-eR*sin(t); 
    ellipse(pX, pY, pD, pD);
  }

  println(""+mouseX+", "+mouseY);
}

