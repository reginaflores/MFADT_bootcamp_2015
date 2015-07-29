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

public class example_04_NestedIfStatements extends PApplet {

//----------------------------------------------------
// DT Bootcamp 2014, Parsons the New School for Design. 
//
// Day 5, Nested If-Loops (aka if-loops inside of if-loops)
//
// - these are seen when the occurrence of one scenario produces the 
// possibility of multiple other scenarios.
// Ex:
//                    Start
//                /           \
//      scenarioA               senarioB             //preliminary if-loops
//       /      \              /        \
// scenarioC  scenarioD    scenarioE    scenarioF    //nested if-loops
//
// Note: you are not limited to 2 sub-scenarios; theoretically there can be any number of if-loops 
// and nested if-loops.
//----------------------------------------------------

public void setup() {
  size(500, 500);
  noFill();
}

public void draw() {

  background(255);

  
  if (mouseX < width/2) {
    //if the mouse is on the left side of the canvas
    //
    line(0, 0, width, height);
    
    if (mouseY > height/2) {
      //if the mouse is on the left side and the bottom
    //
      ellipse(width/4, height/4, width/4, height/4);
    } else {
      //if the mouse is on the left side and the top
      //
      rect(0, height/2, width/4, height/4);
    }
    
  } else {
    
    //if the mouse is on the right side of the canvas
    //
    //
    
  }

}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "example_04_NestedIfStatements" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
