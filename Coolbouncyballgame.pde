int xpos = 225;
int cxpos = xpos + 40;
int cypos = 475;
float xspeed = 10;
float yspeed = 10;
int count = 0;
float r = 0;
float g = 0;
float b = 0;
int streak = 0;

void setup(){
  size(500,500);
}
void draw(){
  background(r,g,b);
  fill(255,0,0);
  stroke(0,0,0);
  rect(xpos,480, 75, 20);
  fill(0,0,255);
  stroke(0,0,0);
  ellipse(cxpos, cypos, 10, 10);  
  counter();
  if(keyPressed){
    moveRect();
  }
    ballStart();
  

}
  


void moveRect(){
    if(keyCode == LEFT){
      xpos-=5;
    }
    if(keyCode == RIGHT){
      xpos+=5;
    }
  }
void ballStart(){
  cxpos+=xspeed;
  cypos+=yspeed;
  if(cxpos>=500){
    xspeed = random(-8,-5);
  }
  if(cxpos<=0){
    xspeed = random(5,8);
  }
  if(cypos>=500){
    yspeed = random(-8,-5);
    streak = 0;
  }
  if(cypos<=0){
    yspeed = random(5,8);
  }
  if(Math.abs(cypos-480)<=2 && Math.abs(cxpos-(xpos+37.5)) < 37.5 && yspeed >= 0){
    //this took forever to get write, its still not great
    //checks if the ball is within range of rectangle, and if it is coming from the top of screen or bottom
    yspeed = random(-5,-8);
    xspeed = random(-5,5);
    count++;
    streak++;
    changeColor();
 
}
}
void counter(){
  fill(0,0,0);
  textSize(25);
  text("Count: " + count, 25, 25 );
  fill(0,0,0);
  textSize(25);
  text("Streak: " + streak, 350, 25 );
}
void changeColor(){
  r = random(255);
  g = random(255);
  b = random(255);
}
  

    
  

  
  
      
      
