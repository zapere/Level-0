PImage Mustache;
PImage MadFace;
PImage Hat;
PImage Press;

void setup() {
  MadFace = loadImage("MadFace.jpg");  // 2. Change this to match the name of your photo. 
  size(MadFace.width, MadFace.height);
  background(MadFace);
  Mustache = loadImage("Mustache.png");
  Mustache.resize(200, 200);
  Hat = loadImage("Hat.png");
  Hat.resize(100, 100);
  Press = loadImage("Press.png");
  Press.resize(200, 200);
  print("TRY HITTING G");


  // 4. Find an image of a mustache, and drop it onto this sketch.
}

void draw() {
  if (mouseButton == LEFT) {
    background(MadFace);
    image(Mustache, mouseX-(Mustache.width/2), mouseY-25);
  }
  if (mouseButton == RIGHT) {
    background(MadFace);
    // 8. Only draw the mustache when the mouse is pressed.
    image(Hat, mouseX-50, mouseY-50);

    // 6. Add the mustache using: image(mustache, xPosition, yPosition)

    // 7. Change the line above so that the mustache moves with the mouse.

    // 9. [optional] You might want to adjust mouseX and mouseY so that your tash is drawn exactly where the mouse is clicked.
    // 10. [optional] Draw a hat on your friends when the right mouse button is clicked: if (mouseButton == RIGHT)
  }
}
void keyPressed (){
  if (key=='g') {
    background(MadFace);
    image(Press, mouseX-100, mouseY-100);
  }
}

