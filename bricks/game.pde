void game() {
  background(blue);
   timer-=1;
  //bricks
  stroke(black);
  circle(x[0], y[0], brickd);
  circle(x[1], y[1], brickd);
  circle(x[2], y[2], brickd);
  int i = 0;
  while (i<n) {
    if (alive[i] == true) {
      managebrick(i);
    }
    i++;
  }
  
   //score and lives 
  textSize(50);
  fill(purple);
  text("score: ", 610, 500);
  text(score, 700, 500);
  fill(red);
  text("lives: ", 625, 600);
  text(lives, 700, 600);

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
  circle(ballx, bally, balld);
  if(timer<0){
  ballx += vx;
  bally += vy;
  }

  //bouncing
  d=dist(px, py, ballx, bally);
  Rp=pd/2;
  R=balld/2; 

  if (d<=Rp+R) {
    vx = (ballx - px)/10;
    vy = (bally - py)/10;
  }
  //bouncing off wall
  if (bally < balld/2) {
    vy*=-1;
  }
  if (ballx < balld/2 || ballx > width-balld/2) {
    vx*=-1;
  }
  //paddle and ball restrictions
  px=max(px, 50);
  px=min(px, 750);
  ballx=max(ballx, 10);
  ballx=min(ballx, 790);
  
if(bally>800){
 lives-=1;
 fill(white);
  circle(ballx, bally, balld);
  ballx = width/2;
  bally = height-200;
  timer=100;
}

if(lives == 0){
  mode=GAMEOVER;
}
 if(score==28){
    mode=WIN;
  }
}

void gameclicks() {
 mode=PAUSE;
}

void managebrick(int i) {
  if (y[i]==100) {
    fill(red);
  }
  if (y[i]==200) {
    fill(orange);
  }
  if (y[i]==300) {
    fill(yellow);
  }
  if (y[i]==400) {
    fill(green);
  }
  circle(x[i], y[i], brickd);
  if (dist(ballx, bally, x[i], y[i])< balld/2 + brickd/2) {
    vx = (ballx - x[i])/10;
    vy = (bally - y[i])/10;
    alive[i] = false;
    score+=1;
  }
}
