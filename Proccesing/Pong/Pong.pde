int left = 50;
int top = 50;
int right = 600;
int bottom = 400;
int paddle1X = 60;
int paddle1Y = 225;
int paddleWidth = 10;
int paddleHeight = 75;
void setup(){
  size(650,450);
}
void draw(){
  background(255,255,255);
 drawBoard();
  rect(paddle1X,paddle1Y,paddleWidth,paddleHeight);
 
}
void drawBoard(){
 line(left,top,right,top) ;
 line(right,top,right,bottom);
 line(right,bottom,left,bottom);
 line(left,bottom,left,top);
}
void keyPressed(){
 if(key=='w'){
  paddle1Y=paddle1Y-5;
 } 
 if(key=='s'){
  paddle1Y=paddle1Y+5; 
 }
}
