//colours
color red = #FF0000;
color yellow = #FFFF00;
color blue = #0000FF;
color purple = #4b0082;
color black  = #000000;
color white  = #FFFFFF;
color green  = #008000;
color orange = #ffa500;
color lightblue = #ADD8E6;
color grey   = #808080;
color brown = #964B00;
color darkbrown = #5C4033;
color pink = #FF1493;

//array
int[] x;
int[] y;
boolean[] alive;
int brickd;
int n;
int tempx, tempy;

//mode
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//entity variables
float px, py, pd;
//ball
float ballx, bally, balld;

boolean akey, dkey;

float vx, vy;//velocity

//bouncing variables
float d, Rp, R;

void setup(){
 int i = 0;
 brickd = 50;
 x = new int[n];
 y = new int[n];
 alive = new boolean[n];
  tempx = tempy = 100;
  n = 28;
  alive[i] = true;
  
   while(i<n){
  x[i] = tempx;
  y[i] = tempy;
  alive[i] = true;
  tempx = tempx + 100;
  if(tempx== width){
    tempx = 100;
    tempy +=100;
  }
 }
  
  size(800,800);
  textAlign(CENTER, CENTER);
  mode=GAME;
  
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

void draw(){
    if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if ( mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("mode error: " + mode);
  }
  //
}
