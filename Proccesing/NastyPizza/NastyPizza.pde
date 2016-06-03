
void setup() {
  noStroke();
  size(1000, 1000);
  rect(0, 0, 1000, 1000);
  fill(209, 143, 29);
  ellipse(500, 500, 400, 400);
  fill(168, 10, 10);
  ellipse(500, 500, 350, 350);
  fill(232, 255, 19);
  ellipse(500, 500, 325, 325);
}
void keyPressed() {
  if (key=='q') {
    fill(255, 255, 255);
    ellipse(385, 325, 75, 75);
  }
  if (key=='a'){
    fill(255,255,255);
   ellipse(300,475,75,75); 
  }
  if(key=='z'){
   fill(255,255,255); 
    ellipse(385,660,75,75);
    
  }
 
}
void draw() {

  PImage GreenWorm=loadImage("GreenWorm.png");
  PImage RedWorm=loadImage("RedWorm.png");
  PImage Bacon=loadImage("Bacon.png");

  Bacon.resize(50, 50);
  if (mousePressed) {
    fill(209, 143, 29);
    ellipse(500, 500, 400, 400);
    fill(168, 10, 10);
    ellipse(500, 500, 350, 350);
    fill(232, 255, 19);
    ellipse(500, 500, 325, 325);
    Bacon.resize(50, 50);

    image(Bacon, mouseX, mouseY);
    image(Bacon, mouseX, mouseY-100);
    image(Bacon, mouseX-100, mouseY);
    image(Bacon, mouseX-100, mouseY-100);
    image(Bacon, mouseX+100, mouseY+100);
    image(Bacon, mouseX-100, mouseY+100);
    image(Bacon, mouseX+100, mouseY);
    image(Bacon, mouseX, mouseY+100);
    image(Bacon, mouseX+100, mouseY-100);
  }
  if (mousePressed) {

    GreenWorm.resize(50, 50);
    image(GreenWorm, mouseX, mouseY);
    image(GreenWorm, mouseX, mouseY-100);
    image(GreenWorm, mouseX-100, mouseY);
    image(GreenWorm, mouseX-100, mouseY-100);
    image(GreenWorm, mouseX+100, mouseY+100);
    image(GreenWorm, mouseX-100, mouseY+100);
    image(GreenWorm, mouseX, mouseY+100);
    image(GreenWorm, mouseX+100, mouseY);
    image(GreenWorm, mouseX+100, mouseY-100);
    RedWorm.resize(50, 50);
    image(RedWorm, mouseX, mouseY);
    image(RedWorm, mouseX, mouseY-100);
    image(RedWorm, mouseX-100, mouseY);
    image(RedWorm, mouseX-100, mouseY-100);
    image(RedWorm, mouseX+100, mouseY+100);
    image(RedWorm, mouseX-100, mouseY+100);
    image(RedWorm, mouseX, mouseY+100);
    image(RedWorm, mouseX+100, mouseY);
    image(RedWorm, mouseX+100, mouseY-100);
  }
}

