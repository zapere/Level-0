int TopLeftBite = 0;
void setup() {
  size(300, 300);
}
void draw() {
  noStroke();
  fill(255, 255, 255);
  rect(0, 0, 7000000, 7000000);
  fill(0, 255, 0);
  rect(125, 0, 25, 100);
  fill(255, 0, 0);
  ellipse(125, 100, 100, 100);
  ellipse(150, 100, 100, 100);
  delay(500);
    
}
void keyPressed() {

  if (key=='q') {
    fill(255, 255, 255);
    ellipse(105, 75, 50, 50);
  }
  if (key=='p') {
    fill(255, 255, 255);
    ellipse(175, 75, 50, 50);
  }
  if (key=='m') {
    fill(255, 255, 255);
    ellipse(165, 132, 50, 50);
  }
  if (key=='z') {
    fill(255, 255, 255);
    ellipse(100, 125, 50, 50);
  }
}
void mouseClicked(){
  
  rect(0,0,7000000,700000);
  textSize(20);
  fill(0,0,0);
  text("Press q, m, p or z for the bite!",0,150);
  delay(1000);
  
}

