void gameover(){
  background(red);
  textSize(100);
  text("YOU",400,400);
  text("LOST",400,500);
  
  //restart button
  fill(white);
  tactilerectangle(300,600,200,100);
  rect(300,600,200,100);
  fill(black);
  textSize(40);
  text("RESTART",400,650);
  
}


void gameoverclicks(){
   if (mouseX > 300 && mouseX < 500 && mouseY> 600 && mouseY < 700) {
   mode = INTRO;
   reset();
  }
}
