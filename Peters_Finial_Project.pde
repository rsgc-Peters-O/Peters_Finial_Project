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
int a1;
int a2;
int a3;
int a4;
int a5;
int y;
int score = 0;
PImage background;
boolean nextlevel;

void setup() {
  size (600, 600);

  //THe code for inserting the backround

  background = loadImage("backround.png");

  //Animations of the circles

  x=0;
  y = 100;
  x1=100;
  x2=200;
  x3=300;
  x4=400;
  y1=int(random(0, 50));
  y2=int(random(0, 50));
  a1= y1+y2; //This is the code for the right answer
  a2= 45; //This code is   for the wrong answers
  a3= 21; //This code is   for the wrong answers
  a4= 56; //This code is   for the wrong answers
  a5= 27; //This code is   for the wrong answers
}

void draw() {
  if (nextlevel = false) {
    background(0);
    fill(255);

    //The circles for the possible answers

    ellipse( x, y, 40, 40);
    ellipse(x1, 100, 40, 40);
    ellipse(x2, 100, 40, 40);
    ellipse(x3, 100, 40, 40);
    ellipse(x4, 100, 40, 40);
    //The animation of the circles

    fill(0);
    text(""+a1, x-10, 100);
    text(""+a2, x1-10, 100);
    text(""+a3, x2-10, 100);
    text(""+a4, x3-10, 100);
    text(""+a5, x4-10, 100);
    fill(255);
    x=x+1.2;
    x1=x1+1.2;
    x2=x2+1.2;
    x3=x3+1.2;
    x4=x4+1.2;

    //The box for the equation or question box

    line(150, 500, 150, 550);
    line(150, 500, 370, 500);
    line(370, 500, 370, 550);
    line(370, 550, 150, 550);

    text(""+y1, 200, 525);
    text("+"+y2, 220, 525);
    text("=", 245, 525);

    // score
    text("score: " + score, 10, 50);
    fill(255);

    //Line for the possible equation

    text("y:"+mouseY, 10, 10);
    text("x:"+mouseX, 20, 20);
    stroke(255);
    line(mouseX-10, mouseY, mouseX+10, mouseY);
    line(mouseX, mouseY-10, mouseX, mouseY+10);

    //highscore = max(score, highscore);

    //b1=170-donY;
    //a6=x2-50;
    //a5=x1-50;

    //c1=sq(a5)+sq(b1);
    //c2=sq(a6)+sq(b1);
    //line1=sqrt(c1);
    //line2=sqrt(c2);

    if (score == 5) {
      nextlevel = true;
      background(255);
      image(background, 300, 300, 500, 500); //To insert the backround
    }
  }
}


void mousePressed() {
  if (mousePressed) {
    if (dist(mouseX, mouseY, x, y) < 20) {
      score++;
      setup();
    }
  }
}