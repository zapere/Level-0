int leftwall= 100;
int rightwall=700;
int topwall=100;
int bottomwall=600;
int snakewidth=100;
int snakeheight=100;
int maxY = 5;
int maxX = 6;
int minY = 0;
int minX = 0;
int dX = 0;
int dY = 0;
boolean gameOver = false;
int[]  snakex={2, 2, 2};
int[] snakey={2, 3, 4};
int time=millis();
int growtime = millis();
void setup() {
  size(900, 900);
}

void draw() {
  fill(255, 255, 255);
  rect(leftwall, topwall, rightwall, bottomwall);
  fill(0, 0, 0);
  if (!isInbounds()) {
    gameOver = true;
    textSize(40);
    text("Game Over!", 450, 450);
  }
  for (int i=0; i<snakex.length; i++) {
    rect(leftwall+snakex[i]*100, topwall+snakey[i]*100, snakewidth, snakeheight);
  }
  if (millis()-time>500) {
    time=millis();
    advancesnake();
  }
  if(millis()-growtime>3000){
    
  }
}
void keyPressed() {
  if (gameOver) {
    return;
  }
  if (key == CODED) {
    if (keyCode == UP) {
      dX=0;
      dY=-1;
    }
    if (keyCode == DOWN) {
      dX=0;
      dY=1;
    }
    if (keyCode == LEFT) {
      dX=-1;
      dY=0;
    }
    if (keyCode == RIGHT) {
      dX=1;
      dY=0;
    }
  }
}
void advancesnake() {
  if (dX == 0 && dY == 0) {
    return;
  }
  for (int i=1; i>=0; i--) {
    snakey[i+1]=snakey[i];
    snakex[i+1] = snakex[i];
  }
  
  
  
  snakey[0] = snakey [0]+dY;
  snakex[0] = snakex[0]+dX;
}
boolean isInbounds() {
  return snakex[0]<=maxX && snakey[0] <= maxY && snakex[0] >= minX && snakey[0] >=minY;
}