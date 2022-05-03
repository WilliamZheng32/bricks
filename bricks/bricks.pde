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

int[] x;
int[] y;
int brickd;

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
  
  //bricks
  brickd = 50;
 x = new int[3];
 y = new int[3];
 
 x[0] = 100;
 y[0] = 100;
 
 x[1] = 400;
 y[1] = 100;
 
 x[2] = 700;
 y[2] = 100;
 
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
