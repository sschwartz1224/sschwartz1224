class raindrop 
{
  float x, y;
  float speed;
  boolean prime;
  color col;
  int pCount;
  int counter;
  public raindrop(){
    x = random(width);
    y = 0;
    speed = random(1,10);
    col = color(76,116,229);
  }
  
  public void move(){
    y+=speed;
    if(y>height){
      y = 0;
    }
  }
  void display(){
    fill(col);
    noStroke();
    for(int i = 0; i<10; i++){
       if(!prime){
      fill(#E53A4E);
      ellipse(x, y+1*2, i, i);
    }
    else{
      fill(#3A55E5);
      ellipse(x, y+1*2, i, i);
    }
  }
    
    for(int i = 0; i< 600; i = i+100){
      fill(#6C6C6C);
      ellipse(i,0,120,120);
  }
  
  }
 void primeCheck(){
   for(int h = 2; h<i/2; h++){
     if(i%h == 0){
       prime = false;
     }
     else{
    prime = true;
 }
   }
 }
 
void counter(){
  fill(0,0,0);
  textSize(25);
  text("Total Count: " + counter, 25, 25 );
  
}
 
 

  
  
}
