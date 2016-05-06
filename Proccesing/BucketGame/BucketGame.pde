float drop = 0;
PImage garden;
float speed = 1;
void setup() {
  garden = loadImage("garden.jpg");
  garden.resize(800, 800);
  size(garden.width, garden.height);
}

void draw() {
  
  background(garden);
  fill(0, 150, 200);
  speed = speed+.5;
  drop = drop+speed;
  
  ellipse(400, drop, 100, 100);
  rect(mouseX, 600, 100, 100);

  float dropBottom = drop + 50;
  float bucketTop = 600 - 50;
  println("drop: "+drop);
  if (dropBottom>bucketTop) {
    drop = 0;
    ellipse(100, drop, 100, 100);
    print("You have caught 1 more water");
  }
}

