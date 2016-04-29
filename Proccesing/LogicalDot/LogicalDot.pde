void setup() {
  size(800, 800);
}
int magentaWidth = 50;
int cyanWidth = 100;
int cyanSpace = 200;
int magentaSpace = 100;
void draw() {


  fill(102, 238, 204);

  if (mousePressed) {
    fill(204, 34, 187);
    ellipse(mouseX+magentaSpace-magentaWidth+50, mouseY-50, magentaWidth, magentaWidth);
    ellipse(mouseX-magentaSpace+magentaWidth-50, mouseY+magentaSpace-50, magentaWidth, magentaWidth);
    ellipse(mouseX+magentaSpace-magentaWidth+50, mouseY+magentaSpace-50, magentaWidth, magentaWidth);
    ellipse(mouseX-magentaSpace+magentaWidth-50, mouseY-50, magentaWidth, magentaWidth);
  } else { 
    ellipse(mouseX+cyanSpace-cyanWidth, mouseY+cyanSpace-100, cyanWidth, cyanWidth);
    ellipse(mouseX-cyanSpace+cyanWidth, mouseY+cyanSpace-100, cyanWidth, cyanWidth);
    ellipse(mouseX+cyanSpace-cyanWidth, mouseY-100, cyanWidth, cyanWidth);
    ellipse(mouseX-cyanSpace+cyanWidth, mouseY-100, cyanWidth, cyanWidth);
  }
}

