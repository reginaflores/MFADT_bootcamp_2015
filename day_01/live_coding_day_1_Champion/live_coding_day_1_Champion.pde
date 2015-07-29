
// bootcamp 2015 Day 1 Live Coding Project
// created by Lucy Bonner! Yay!
// Part One: without variables, just uses shapes

// draw Champion, the three-legged dog from Parks & Rec
// ha! you have to because I said so.

void setup() {
  
  size(500, 500);
  
}

void draw() {
  
  // first, grey background
  // after you draw Champion, you can change the background color to something more lively
  // like:
  
  background(149, 212, 213);
//  background(180);

  // if, after drawing Champion, you want to get a rectangle in there, you can add a frame
  
  rectMode(CENTER);
  stroke(53, 34, 34);
  strokeWeight(5);
  noFill();
  rect(width/2, height/2, 425, 425);
  
  
  // 1.draw his head out of circles
  
  noStroke();
  fill(255);
  ellipse(width/2, height/2, 200, 200); //head
  ellipse(width/2, (height/2)+60, 150, 150); //muzzle
  
  // draw this part after the eyes and nose
  // it has to come before them so that it is underneath, but
  // it will make more sense to add it into the code after eyes and nose are drawn
  // 4.EYE SPOT! NOSE SPOT! (ellipses)
  
  fill(113, 70, 50); //light brown
  ellipse((width/2)-55, (height/2)-20, 75, 50); //eye spot
  ellipse(width/2, (height/2)+60, 75, 110); //nose spot
  
  // 2.draw his eyes out of circles
  
  fill(53, 34, 34); //dark brown
  ellipse((width/2)-45, (height/2)-20, 20, 20); //left eye
  ellipse((width/2)+45, (height/2)-20, 20, 20); //right eye
  
  // 3.draw his nose: also a circle! 
  
  ellipse(width/2, (height/2)+40, 50, 50);
  
  // 5. draw ears out of triangles
  
  fill(113, 70, 50); //light brown
  triangle((width/2)-92, (height/2)-40, (width/2)-40, (height/2)-92, (width/2)-150, (height/2)-100); // left ear
  triangle((width/2)+92, (height/2)-40, (width/2)+40, (height/2)-92, (width/2)+150, (height/2)-100); // right ear
  
  // 6.draw the folded-over part of his ears
  
  triangle((width/2)-150, (height/2)-100, (width/2)-80, (height/2)-94, (width/2)-170, (height/2)-60); //left ear fold
  triangle((width/2)+150, (height/2)-100, (width/2)+80, (height/2)-94, (width/2)+170, (height/2)-60); //right ear fold
  
  
}


