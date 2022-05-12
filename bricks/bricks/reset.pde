void reset(){
  lives=3;
  score=0;
  timer = 100;
  int i = 0;
  brickd = 50;
   n = 28;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];
  tempx = tempy = 100;
 
  alive[i] = true;

  while (i<n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 100;
    if (tempx == width) {
      tempx = 100;
      tempy +=100;
    }
    i+=1;
  }

  
    //paddle and ball
  px = width/2;
  py = height;
  pd = 100;
  ballx = width/2;
  bally = height-200;
  balld = 10;

  vx = random(-7, 7);
  vy = random(-7, 7);
}
