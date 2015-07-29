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

public class example_01_boolean extends PApplet {
  public void setup() {
//----------------------------------------------------
// DT Bootcamp 2013, Parsons the New School for Design. 
// Day 5, a variable type call boolean
// http://processing.org/reference/boolean.html
//----------------------------------------------------

int x = 10;

boolean isEqualTen = (x==10);

if(isEqualTen){
  println("Yes, x is ten");
}
    noLoop();
  }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "example_01_boolean" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
