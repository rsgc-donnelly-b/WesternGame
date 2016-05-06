//importing the Minim sound library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//background
PImage BG;
PImage T1; //Tile 1 - left tile
PImage T2; //Tile 2 - Middle Tile
PImage T3; //Tile 3 - Right tile
PImage Bush1;
PImage cactus3;
PImage crate;
PImage skeleton;
PImage T14;
PImage T15;
PImage T16;

//Minim setup
//Minim Setup
Minim minim;//audio context
AudioPlayer player;
AudioInput input;
AudioPlayer song;

void setup() {
  size(1280, 800);
  BG = loadImage("BG.png");
  T1 = loadImage("1.png");
  T2 = loadImage("2.png");
  T3 = loadImage("3.png");
  Bush1 = loadImage("Bush (1).png");
  cactus3 = loadImage("Cactus (3).png");
  crate = loadImage("Crate.png");
  skeleton = loadImage("Skeleton.png");
  T14 = loadImage("14.png");
  T15 = loadImage("15.png");
  T16 = loadImage("16.png");
  
  //Playing the song itself
  minim = new Minim(this);
  input = minim.getLineIn();
  song = minim.loadFile("Western 8 bit.mp3");
  song.play();
}

void draw() {
  
  //ground
  image(BG, 0, 0);
  image(T1, 0, 690);
  image(T2, 125, 690);
  image(T2, 250, 690);
  image(T2, 375, 690);
  image(T2, 500, 690);
  image(T2, 625, 690);
  image(T2, 750, 690);
  image(T2, 875, 690);
  image(T2, 1000, 690);
  image(T2, 1125, 690);
  image(T3, 1250, 690);
  
  //Objects - Not interactive yet
  image(Bush1, 200, 603);
  image(cactus3, 530, 594);
  image(crate, 630, 590);
  image(skeleton, 900, 640);
  
  //Platforms 1
  image(T14, 200, 400);
  image(T15, 325, 400);
  image(T16, 450, 400);
  
  //Platforms 2
  image(T14, 830, 400);
  image(T15, 955, 400);
  image(T16, 1080, 400);
}