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
int xVelocity = 0;
int yVelocity = 0;
float ballLeft = ballX-12.5;
int paddle1Right = paddle1X + paddleWidth;
int paddle2Right = paddle2X + paddleWidth;
float ballRight = ballX+12.5;
PFont f;
int player1Score = 0;
int player2Score = 0;

void setup() {
  size(1000, 450);
  f = createFont("Arial", 16, true);
}
void draw() {
  background(255, 255, 255);
  drawBoard();
  rect(650, 50, 300, 350);
  fill(0);
  textFont(f, 16);
  text("Player 1", 700, 100);
  text("Player 2", 850, 100);
  text(""+player1Score, 725,150);
  text(""+player2Score,875,150);
  fill(255);
  rect(paddle1X, paddle1Y, paddleWidth, paddleHeight);
  rect(paddle2X, paddle2Y, paddleWidth, paddleHeight);
  drawBall();
  ballY=ballY-yVelocity;
  ballX=ballX+xVelocity;
  ballLeft = ballX-12.5;
  ballRight = ballX+12.5;



  if (ballLeft<=paddle1Right && ballY>paddle1Y && ballY<paddle1Y+paddleHeight) {
    xVelocity=xVelocity*(-1);
  } 


  if (ballRight>=paddle2X && ballY>paddle2Y && ballY<paddle2Y+paddleHeight) {
    xVelocity=xVelocity*(-1);
  } else {
    if (ballX+12.5>=right) {
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

  if (ballX-12.5>600) {
    ballX = 325;
    ballY = 225; 
    xVelocity = 0;
    yVelocity = 0;
    player1Score = player1Score+1;
  }
  if (ballX+12.5<50) {
    ballX = 325;
    ballY = 225; 
    xVelocity = 0;
    yVelocity = 0;
    player2Score = player2Score+1;
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
void mousePressed() {
  if (mousePressed) {
    xVelocity=2;
    yVelocity=2;
  }
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

