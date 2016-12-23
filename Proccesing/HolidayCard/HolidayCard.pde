PImage snow;
void setup() {
  snow = loadImage("snow.jpg");
  size(snow.width, snow.height);
  image(snow,0,0);
  PImage nose = loadImage("nose.png");
  nose.resize(25,25);
  PImage arm = loadImage("arm.png");
  arm.resize(25,25);
  PImage arm2 = loadImage("arm2.png");
  arm2.resize(30,30);
  noStroke();
  fill(255,255,255);
  ellipse(1704, 900, 100, 100);
  ellipse(1704, 850, 75, 75);
  ellipse(1704, 815, 60, 60);
  println(mouseX);
  println(mouseY);
  fill(0, 0, 0);
  ellipse(1692, 803, 10, 10);
  ellipse(1715, 803, 10, 10);
  image(nose,1690,810);
  image(arm,1645,830);
  image(arm2,1740,825);
  fill(163,103,18);
  rect(1356,1000,75,125);
  fill(2,117,31);
  triangle(1480,1000,1393,900,1311,1000);
  triangle(1405,1000,1393,900,1311,1000);
  triangle(1335,903,1450,903,1391,835);

}


void draw() {
  
  if(mousePressed){
  fill(random(255),random(255),random(255));
   ellipse(mouseX,mouseY,random(30),random(30)); 
    
    
  }
}

