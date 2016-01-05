//Name: Oscar Peters
//Purpose: My new game is a logic but mix and match game

//Defined Varibles

void setup() {
  size (600, 600);
  background(0);
}

void draw() {
  background(0);
  fill(255);

  //The circles for the possible answers

  ellipse( 300, 100, 30, 30);
  ellipse(400, 100, 30, 30);
  ellipse(500, 100, 30, 30);
  ellipse(200, 100, 30, 30);
  ellipse(100, 100, 30, 30);

  //Lin:e for the possible equation
  text("y:"+mouseY, 10, 10);
  text("x:"+mouseX, 20, 20);
  stroke(255);
  line(mouseX-10, mouseY,mouseX+10,mouseY);
  line(mouseX,mouseY-10, mouseX,mouseY+10);
}