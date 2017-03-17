int left = 50;
int top = 50;
int right = 600;
int bottom = 400;
int paddle1X = 60;
int paddle1Y = 200;
int paddle2X = 580;
int paddle2Y = 200;
int paddleWidth = 10;
int paddleHeight = 75;
int ballX = 325;
int ballY = 225;
int xVelocity = 2;
int yVeloctiy = 2;
void setup() {
  size(650, 450);
}
void draw() {
  background(255, 255, 255);
  drawBoard();
  rect(paddle1X, paddle1Y, paddleWidth, paddleHeight);
  rect(paddle2X, paddle2Y, paddleWidth, paddleHeight);
  drawBall();
  ballX=ballX-1;
  //ballY=ballY-1;
  if (paddle1X<ballX&&ballX<paddle1X+paddleWidth) {
    xVelocity = (-1)*xVelocity;
  }
}
void drawBall() {
  ellipse(ballX, ballY, 25, 25);
}
void drawBoard() {
  line(left, top, right, top) ;
  line(right, top, right, bottom);
  line(right, bottom, left, bottom);
  line(left, bottom, left, top);
}
void keyPressed() {
  if (key=='w') {
    paddle1Y=paddle1Y-10;
  } 
  if (key=='s') {
    paddle1Y=paddle1Y+10;
  }
  if (key==CODED) {
    if (keyCode==UP) {
      paddle2Y=paddle2Y-10;
    }
  }
  if (key==CODED) {
    if (keyCode==DOWN) {
      paddle2Y=paddle2Y+10;
    }
  }
}

