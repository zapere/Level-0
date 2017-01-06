float leftPupilX = 242;
float leftPupilY = 242;
float rightPupilX = 419;
float rightPupilY = 100;
int liX = 241;
int liY = 263;
float iR = 12.5;
int riX = 418;
int riY = 251;
void setup()
{
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
  if (leftPupilX<230.5) {
    leftPupilX=230.5;
  }
  if (leftPupilX>254) {
    leftPupilX=254;
  }
  leftPupilY=mouseY;
  if (leftPupilY<251) {
    leftPupilY=251;
  }
  if (leftPupilY>275) {
    leftPupilY=275;
  }
  rightPupilX=mouseX;
  if (rightPupilX<406) {
    rightPupilX=406;
  }
  if (rightPupilX>429) {
    rightPupilX=429;
  }
  rightPupilY=mouseY;
  if (rightPupilY<239) {
    rightPupilY=239;
  }
  if (rightPupilY>262) {
    rightPupilY=262;
  }
  //iris
  fill(random(mouseX), random(mouseX), random(mouseY));
  ellipse(242, 262, 40, 40);
  ellipse(417, 250, 40, 40);
  //pupil
  fill(random(mouseX), random(mouseY), random(mouseX));
  int x=liX-mouseX;
  int y=liY-mouseY;
  float r=sqrt(x*x+y*y);
  if (r<iR) {
    ellipse(leftPupilX, leftPupilY, 15, 15);
  }
  x=riX-mouseX;
  y=riY-mouseY;
  r=sqrt(x*x+y*y);
 if(r<iR){ ellipse(rightPupilX, rightPupilY, 15, 15);
 }
  println(""+mouseX+", "+mouseY);
}

