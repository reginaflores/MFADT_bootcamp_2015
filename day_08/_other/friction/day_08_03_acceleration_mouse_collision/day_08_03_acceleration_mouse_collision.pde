//----------------------------------------------------
// DT Bootcamp 2014, Parsons the New School for Design. 
// Day 8, speed, acceleration, and mouse collision
//----------------------------------------------------

//Declaring the properties of our object:
float size;
float posX;
float posY;
float speedX;
float speedY;

//The acceleration will be an "environment" property
float accel;

void setup(){
  size(1033, 768);
  colorMode(HSB);
  
  //Assigning values to the properties
  size = 60;
  posX = width/2;
  posY = height/2;
  speedX = 0;
  speedY = 0;  
  
  //
  accel = 0.95;
}

void draw(){
  background(50);

  //Check mouse over
  if(posX - size/2 < mouseX && mouseX < posX + size/2 &&
     posY - size/2 < mouseY && mouseY < posY + size/2){
    fill(120, 255, 255);
    speedX = mouseX - pmouseX;
    speedY = mouseY - pmouseY;
  }else{
    fill(120, 255, 200);
  }
  rectMode(CENTER);
  rect(posX, posY, size, size, 15);

  //Add speed to the position
  posX = posX + speedX;
  posY = posY + speedY;
  
  //Change speed based on acceleration
  //In this case, the acceleration will slowdown the object
  //Think of it as a simulation of friction 
  speedX = speedX * accel;
  speedY = speedY * accel;
}
