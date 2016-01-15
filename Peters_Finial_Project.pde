//Name: Oscar Peters
//Purpose: My new game is a logic but mix and match game

//Defined Varibles

float x;
float x1;
float x2;
float x3;
float x4;
int y1; //For the random number generator
int y2; //For the random number generator
int a1; // Circle with the right answer
int a2; // Circle with a random number(wrong answer)
int a3; // Circle with a random number(wrong answer)
int a4; // Circle with a random number(wrong answer)
int a5; // Circle with a random number(wrong answer)
int y;
int score = 0; //To change score
PImage background; //For background
int start;
boolean error;



void setup() {
  size (600, 600);

  //The code for inserting the backround

  background = loadImage("backround.png");

  //Timer

  start = millis();

  //Animations of the circles

  x=0;
  y = 100;
  x1=100;
  x2=200;
  x3=300;
  x4=400;
  y1=int(random(0, 50)); //Random number generator
  y2=int(random(0, 50)); //Random number generator
  a1= y1+y2; //This is the code for the right answer
  a2= 45; //This code is   for the wrong answers
  a3= 21; //This code is   for the wrong answers
  a4= 56; //This code is   for the wrong answers
  a5= 27; //This code is   for the wrong answers
}

void draw() {
  background(0);
  fill(255);

  //Timer 

  int timer = millis()-start;
  text(timer, 15, 35);

  //The circles for the possible answers

  ellipse( x, y, 40, 40); //Circle with the right answer
  ellipse(x1, 100, 40, 40); //Circle with random varible 
  ellipse(x2, 100, 40, 40); //Circle with random varible 
  ellipse(x3, 100, 40, 40); //Circle with random varible 
  ellipse(x4, 100, 40, 40); //Circle with random varible 

  //The animation of the circles

  fill(0);
  text(""+a1, x-10, 100);  //The numbers that display in the circles(Right Answer)
  text(""+a2, x1-10, 100); //The numbers that display in the circles(Wrong Answer)
  text(""+a3, x2-10, 100); //The numbers that display in the circles(Wrong Answer)
  text(""+a4, x3-10, 100); //The numbers that display in the circles(Wrong Answer)
  text(""+a5, x4-10, 100); //The numbers that display in the circles(Wrong Answer)
  fill(255);
  x=x+1.2;
  x1=x1+1.2;
  x2=x2+1.2;
  x3=x3+1.2;
  x4=x4+1.2;

  //The box for the equation or question box

  line(150, 500, 150, 550); //Line (side) for the box
  line(150, 500, 370, 500); //Line (side) for the box
  line(370, 500, 370, 550); //Line (side) for the box
  line(370, 550, 150, 550); //Line (side) for the box

  text(""+y1, 200, 525); //The text for the equation
  text("+"+y2, 220, 525); //The text for the equation
  text("=", 245, 525); //The text for the equation

  // score
  text("score: " + score, 10, 50); //Displays the score when right answer is clicked
  fill(255);

  //Mouse clicker 

  text("y:"+mouseY, 10, 10); //Shows the Cordinates
  text("x:"+mouseX, 20, 20); //Shows the Cordinates
  stroke(255);
  line(mouseX-10, mouseY, mouseX+10, mouseY); //Horizontal line for the cross hair
  line(mouseX, mouseY-10, mouseX, mouseY+10); //Vertical line fot the croos hair

  //highscore = max(score, highscore);

  //b1=170-donY;
  //a6=x2-50;
  //a5=x1-50;

  //c1=sq(a5)+sq(b1);
  //c2=sq(a6)+sq(b1);
  //line1=sqrt(c1);
  //line2=sqrt(c2);

  if (score == 5) { //When the score  gets to the right number, next level appears
    background(255); //Background
    image(background, 125, 125, 375, 375); //To insert the backround
  }
}


//Mouse pressed on the right answer, the score goes up one each time

void mousePressed() {
  if (mousePressed) {
    if (dist(mouseX, mouseY, x, y) < 20) {
      score++; //Adds (1) to score when right answer is clicked
      setup();
    }
  }
}

void keyPressed() {
  if ( key == 'p' || key == 'P') {
    if (looping) noLoop();
    else loop();
    
    
  }
}