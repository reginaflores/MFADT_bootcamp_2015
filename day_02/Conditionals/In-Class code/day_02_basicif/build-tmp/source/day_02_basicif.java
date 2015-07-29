import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class day_02_basicif extends PApplet {

//----------------------------------------------------
// DT Bootcamp 2015, Parsons the New School for Design. 
// Day 2, Example 4, Theme: Basic if statement
// Basic use of an if statement is shown here.
// This is combined and built upon the previous knowledge of animation and mouse interaction
//----------------------------------------------------

//Declare variables
int xPos; //x position of circle
int yPos; //y position of circle

//Setup Function
public void setup() {
  size(500,500); //Size of our sketch's window
  xPos = width/2; //Initialize this variable to be half of the width of the window
  yPos = height/2; //Initialize this variable to be half of the height of the window
}

//Draw Function
public void draw() {
  background(255); //Draw the background at the beginning of the draw loop in order to start with a new "frame"
  
  if (mouseX > width/2) { //Check to see if the x position of the mouse is greater than half the width of the window
    xPos++; //If the previous statement is true, add 1 to the xPos every frame (move circle one pixel to the right)
  }
  
  fill(255,0,0); //Sets the fill of the circle to be red
  ellipse(xPos,yPos, 50, 50); //Draw the circle according to the variables we declared earlier
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "day_02_basicif" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
