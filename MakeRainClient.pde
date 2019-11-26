raindrop [] rain;
int countrain = 0;
int i = 0;
void settings(){
  size(500,500);
  rain = new raindrop[1500];
}
void draw(){
  background(200,200,200);
  frameRate(50);
 rain[countrain] = new raindrop();
  countrain++;
  if(countrain>rain.length){
    countrain = 0;
  }
  for(i = 0; i<countrain; i++){
    rain[i].primeCheck();
    rain[i].move();
    rain[i].display();
  }
}


  
