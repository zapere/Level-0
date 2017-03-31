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
int yVelocity = 2;
float ballLeft = ballX-12.5;
int paddle1Right = paddle1X + paddleWidth;
void setup() {
  size(650, 450);
}
void draw() {
  background(255, 255, 255);
  drawBoard();
  rect(paddle1X, paddle1Y, paddleWidth, paddleHeight);
  rect(paddle2X, paddle2Y, paddleWidth, paddleHeight);
  drawBall();
  ballY=ballY-yVelocity;
  ballX=ballX+xVelocity;
  ballLeft = ballX-12.5;

  //  if (paddle1X<ballX&&ballX<paddle1X+paddleWidth) {
  //    xVelocity = (-1)*xVelocity;
  //  }

  if (ballLeft<=paddle1Right && ballY>paddle1Y && ballY<paddle1Y+paddleHeight) {
    xVelocity=xVelocity*(-1);
  } else {
    if (ballX-12.5<=left) {
      xVelocity=xVelocity*(-1);
    }
  }
  
  if (ballY-12.5<=top) {
    yVelocity=yVelocity*(-1);
  }
  if (ballY+12.5>=bottom) {
    yVelocity=yVelocity*(-1);
  }
  if (ballX+12.5>=right) {
    xVelocity=xVelocity*(-1);
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
    paddle1Y=paddle1Y-20;
  } 
  if (key=='s') {
    paddle1Y=paddle1Y+20;
  }
  if (key==CODED) {
    if (keyCode==UP) {
      paddle2Y=paddle2Y-20;
    }
  }
  if (key==CODED) {
    if (keyCode==DOWN) {
      paddle2Y=paddle2Y+20;
    }
  }
}

