void game(){
  background(blue);
  
  //bricks
  circle(x[0], y[0], brickd);
  circle(x[1], y[1], brickd);
  circle(x[2], y[2], brickd);
  
  //paddle
  fill(white);
  circle(px, py, pd);
  if (akey == true) {
    px-=5;
  }
  if (dkey == true) {
    px+=5;
  }
  //ball
  fill(white);
  circle(ballx, bally , balld);
  ballx += vx;
  bally += vy;
  
  //bouncing
   d=dist(px, py, ballx, bally);
   Rp=pd/2;
   R=balld/2; 
   
    if (d<=Rp+R) {
    vx = (ballx - px)/10;
    vy = (bally - py)/10;
  }
  if (bally < balld/2 || bally > height-balld/2){
   vy*=-1; 
  }
  //paddle and ball restrictions
  px=max(px,50);
  px=min(px,750);
  ballx=max(ballx,10);
  ballx=min(ballx,790);
}

void gameclicks(){
  
}
