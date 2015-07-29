//This code is designed to teach both:
// 1. how sine / cosine work and what you can do with them
// 2. how to use keyboard inputs to control your sketch

//Basically we set up a simple circle sketch, then create
//a bunch of different keyboard commands that animate the circle
//using sine and cosine in different ways.

//ALSO NOTE: This sketch demonstrates both inputs for normal / ASCII keys
// AND the "special" or "coded" keys (like up, down, etc.)

//set up some basic variables:

float x, y; // the position of our circle
float radius; // the radius of our circle

float speed; //the speed of sine wave oscillation (aka Frequency)
float size; //the size of sine wave oscillation (aka Amplitude)

int r, g, b; //color values (these could be manipulated too)

//booleans that will be controlled by our key inputs:
boolean wave, circle, pulse, oscillate, spiral, swapXY;

void setup() {
  size(400, 400);
  noStroke();

  //initialze our variables to basic starting values...
  x = width/2;
  y = height/2;
  radius = 20;

  speed = 0.05;
  size = width/4;

  //...and set 'circle' as the default animation
  circle = true;
}

void draw() {
  //each frame we'll draw an almost transparent black box
  //behind everything else.
  //This will give our shapes a cool fading trail...
  fill(0, 10);
  rect(0, 0, width, height);

  //the following set of conditionals say what to do
  //when different keys are pressed.
  //They demonstrate the varieties of patterns that
  //can be created with sine and cosine...

  //I'd suggest live-coding as many of them as you have time for
  //(but maybe just a few first so you can also get to the coded key
  //inputs futher down below...

  if (circle == true) {
    x = width/2 + sin(frameCount*speed)*size;
    y = height/2 + cos(frameCount*speed)*size;
  }

  if (wave == true) {
    x =  frameCount % width;
    y = height/2 + sin(frameCount*speed)*size;
  }

  if (oscillate == true) {
    x = width/2 + sin(frameCount*speed)*size;
    y = height/2;
  }

  if (spiral == true) {
    size += 0.1;
    x = width/2 + sin(frameCount*speed)*size;
    y = height/2 + cos(frameCount*speed)*size;
  }

  if (pulse == true) {
    radius = abs(sin(frameCount*speed)*size);
  }

  if (swapXY == true) {
    float tempX = x;
    x=y;
    y=tempX;
  } 

  // ***IMPORTANT***
  // this demonstrates how to use coded keys to change the
  // amplitude and frequency (size and speed) of the sine functions

  //***Try to live-code this if possible 
  //(do it before you do some of the functions above)

  if (keyPressed) { //using keyPressed conditional instead of 
    // separate function, just to show different options.

    if (key == CODED) { //note that we need this extra "if CODED" conditional.

      if (keyCode == UP) {
        //increase the amplitude
        size++;
      } else if (keyCode == DOWN) {
        //decrease the amplitude
        size--;
      } else if (keyCode == RIGHT) {
        //increase the frequency
        speed*=1.05;
      } else if (keyCode == LEFT) {
        //decrease the frequency
        speed*=0.95;
      }
    }
  }

  //here's where we actually draw our shape --
  // Just a simple circle!
  r = 255;
  g = 255;
  b = 0;
  fill(r, g, b);
  ellipse(x, y, radius, radius);
}

// and here's a separate keyPressed function where we set the booleans
//for all of our normal/ASCII key inputs...

//we do these as booleans so that you don't have to hold down a key
//to keep the shape doing a certain thing.
void keyPressed() {
  if (key == 'c') {
    circle = true;
    wave = pulse = oscillate = spiral = false;
  }

  if (key == 'w') {
    wave = true;
    circle = pulse = oscillate = spiral = false;
  }

  if (key == 'p') {
    pulse = true;
    wave = circle = oscillate = spiral = false;
  }

  if (key == 'o') {
    oscillate = true; 
    wave = circle = pulse = spiral = false;
  }

  if (key == 's') {
    size = 0; //reset the size variable so we can
    //create a spiral out from center;
    spiral = true; 
    wave = circle = pulse = oscillate = false;
  }

  if (key == 'y') {
    //this conditional is more complex, because
    //if x and y are swapped one way we want to swap back
    if (swapXY == false) {
      swapXY = true;
    } else {
      swapXY = false;
    }
  }
}
