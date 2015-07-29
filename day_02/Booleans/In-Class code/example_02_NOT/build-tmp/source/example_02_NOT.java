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

public class example_02_NOT extends PApplet {

//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 5, NOT 
// http://processing.org/reference/logicalNOT.html
//----------------------------------------------------

boolean a; 

public void setup() {

  a = false;

  if (!a) { // Inverts the Boolean value meaning a = true; 
    rect(30, 20, 50, 50);
  } 

  a = true;

  if (a) { 
    line(20, 10, 90, 80); 
    line(20, 80, 90, 10);
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "example_02_NOT" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
