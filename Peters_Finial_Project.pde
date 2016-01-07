//Name: Oscar Peters
//Purpose: My new game is a logic but mix and match game

//Defined Varibles

float x;
float x1;
float x2;
float x3;
float x4;
int y1;
int y2;

void setup() {
  size (600, 600);

  //Animations of the circles

  x=0;
  x1=100;
  x2=200;
  x3=300;
  x4=400;
  y1=int(random(0, 50));
  y2=int(random(0, 50));
}

void draw() {
  background(0);
  fill(255);

  //The circles for the possible answers

  ellipse( x, 100, 40, 40);
  ellipse(x1, 100, 40, 40);
  ellipse(x2, 100, 40, 40);
  ellipse(x3, 100, 40, 40);
  ellipse(x4, 100, 40, 40);

  //The animation of the circles

  x=x+1.5;
  x1=x1+1.5;
  x2=x2+1.5;
  x3=x3+1.5;
  x4=x4+1.5;

  //The box for the equation or question box

  line(150, 500, 150, 550);
  line(150, 500, 370, 500);
  line(370, 500, 370, 550);
  line(370, 550, 150, 550);

text(""+y1,200,525);
text("+"+y2,220,525);
text("=",245,525);
  //Line for the possible equation

  text("y:"+mouseY, 10, 10);
  text("x:"+mouseX, 20, 20);
  stroke(255);
  line(mouseX-10, mouseY, mouseX+10, mouseY);
  line(mouseX, mouseY-10, mouseX, mouseY+10);
}