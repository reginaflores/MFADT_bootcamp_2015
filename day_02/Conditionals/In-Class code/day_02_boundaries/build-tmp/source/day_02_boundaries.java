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

public class day_02_boundaries extends PApplet {

//----------------------------------------------------
// DT Bootcamp 2015, Parsons the New School for Design. 
// Day 2, Example 8, Theme: Setting boundaries.
// Introduces the concept of creating artificial "boundaries" on the edges of the screen using if statements.
// We can use if statements to prevent the circle's position from being greater than the width of the window or less than 0 (the left edge)
//----------------------------------------------------

//Declare variables
int xPos; //x position of circle
int yPos; //y position of circle
int speed; //variable to control how fast the circle will move

//Setup Function
public void setup() {
  size(500, 500); //Size of our sketch's window
  xPos = width/2; //Initialize this variable to be half of the width of the window
  yPos = height/2; //Initialize this variable to be half of the height of the window
  speed = 2; //Initialize the "speed" to be 1. This can be changed to move the circle faster or slower.
}

//Draw Function
public void draw() {
  background(255); //Draw the background at the beginning of the draw loop in order to start with a new "frame"

  fill(0, 255, 0); //Set the fill to be green.

  //If the x position of the mouse is on the right-third of the screen AND xPos is less than width. 
  //This stops the circle from moving further when it reaches the right side of the screen (which is width).
  if (mouseX > width*2/3 && xPos < width) {
    xPos+=speed; //Add the speed to the xPos.
  }

  //If the x position of the mouse is on the left-third of the screen AND xPos is greater than 0. 
  //This stops the circle from moving further when it reaches the left side of the screen (which is 0).
  else if (mouseX < width/3 && xPos > 0) {
    xPos-=speed; //Subtract the speed from the xPos
  }

  else if (mouseX > width/3 && mouseX < width*2/3) { //If neither of the previous statements are true, check to see if the mouse is in the middle-third of the window
    fill(255, 0, 0); //Change the fill of the circle to be red. Notice that we do not move the circle.
  }

  ellipse(xPos, yPos, 50, 50); //Draw the circle according to the variables we declared earlier
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "day_02_boundaries" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
