void intro(){
  background(lightblue);
  
 fill(blue);
  textSize(100);
  text("BRICKBREAKER",400,200);
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
  if (mouseX > 100 && mouseX < 300 && mouseY> 400 && mouseY < 500) {
   mode = GAME;
  }
}
