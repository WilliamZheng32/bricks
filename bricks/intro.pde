void intro(){
 
   int g = 0;
  while(g < numberofframes){
    gif[g] = loadImage("frame_"+g+"_delay-0.03s");
    g+=1;
  }
  image(gif[f],0,0,width,height);
  println(frameCount);
  if(frameCount%2 == 0) f+=1;
  if (f == numberofframes){
   f=0;
  }
  
  
  //background(lightblue);
  
 fill(colorchange);
  textSize(countersize);
  text("BRICKBREAKER",400,200);
  stroke(black);
  fill(white);
  tactilerectangle(300,600,200,100);
  rect(300,600,200,100);
  fill(purple);
  textSize(50);
  
  text("S",330,650);
  text("T",360,650);
  text("A",385,650);
  text("R",420,650);
  text("T",450,650);
  if (countersize>120) {
    countersize=10;
  }
  else{
    countersize+=1; 
  }
  if (countersize<60) {
    countersize+=1;
  }
  
  //colorchange
  counter+=1;
  if (counter==10) {
    colorchange=blue;
  }
  if (counter==20) {
    colorchange=darkbrown;
  }
  if (counter==30) {
   colorchange=green; 
  }
  if (counter==40){
    colorchange=orange;
  }
  if (counter==50){
    colorchange=red; 
  }
  if(counter>50){
   counter=0; 
  }
  
}

void tactilerectangle(int x1, int y1, int w1, int h1) {
  if (mouseX>x1 && mouseX<x1+w1 && mouseY>y1 && mouseY < y1+w1) {
    strokeWeight(4);
    stroke(darkbrown);
  } else {
    strokeWeight(5);
    stroke(black);
  }
}

void introclicks(){
   //mode game
  if (mouseX > 300 && mouseX < 500 && mouseY> 600 && mouseY < 700) {
   mode = GAME;
  }
}
