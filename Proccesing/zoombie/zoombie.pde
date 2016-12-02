float leftPupilX = 242;
void setup()
{
  PImage face = loadImage("face.jpeg");
  size(face.width, face.height);
  image(face, 0, 0);
}

void draw ()
{
   PImage face = loadImage("face.jpeg");
  image(face, 0, 0);
  leftPupilX=mouseX;
  if (leftPupilX<232.5) {
    leftPupilX=232.5;
  }
  //iris
  fill(random(255), mouseX, mouseY);
  ellipse(242, 262, 40, 40);
  ellipse(417, 250, 40, 40);
  //pupil
  fill(random(255), mouseX, mouseY);
  ellipse(leftPupilX, 262, 15, 15);
  ellipse(417, 250, 15, 15);
  //234.5
}

