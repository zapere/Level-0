int dot1 = 0;
PImage RACE;
int dot2 = 0;
void setup() {
  RACE = loadImage("RACE.jpg");
  size(RACE.width, RACE.height);
 background (RACE);
}

void draw() {
  ellipse(dot1, 250, 100, 100);
  ellipse(dot2, 500, 100, 100);
}

void keyPressed() {
  if (key=='q') {
    print("Q was pressed by player one ");
    dot1 = dot1+5;
  }
  if (key=='/'){
    print("/ was pressed by player 2");
    dot2 = dot2+5;
  }
}

