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
PImage[] gif;
int brickd;
int n;
int tempx, tempy;
int score;
int lives;

int f;
int numberofframes;

color colorchange,schange,tchange,achange,rchange,Tchange;
int countersize;
int counter;

//mode
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
final int WIN = 5;

//entity variables
float px, py, pd;
//ball
float ballx, bally, balld;

boolean akey, dkey;

float vx, vy;//velocity

//bouncing variables
float d, Rp, R;

int timer;

void setup() {
  
  numberofframes = 36;
  gif = new PImage[numberofframes];
  
  int g = 0;
  while(g < numberofframes){
    gif[g] = loadImage("frame_"+g+"_delay-0.03s");
    g+=1;
  }
 
  lives=3;
  score=0;
  timer = 100;
  counter=0;
  colorchange=red;
  countersize=10;
  
  int i = 0;
  brickd = 50;
   n = 50;
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

  size(800, 800,FX2D);
  textAlign(CENTER, CENTER);
  mode=INTRO;

  //paddle and ball
  px = width/2;
  py = height;
  pd = 100;
  ballx = width/2;
  bally = height-200;
  balld = 10;

  vx = (1);
  vy = (1);
  
  reset();
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if ( mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  }
    else if (mode == WIN){
     win(); 
  }
  else {
    println("mode error: " + mode);
  }
}
