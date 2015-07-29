PImage myImage;
PFont myFont;
int winSize = 800;
void setup(){
  size (winSize, winSize);
  myImage = loadImage("displeasedBunny.png");
  myFont = loadFont("whiterabbitbyalice-48.vlw");
}

void draw() {
  //Comment and uncomment the following line to see difference
  // background(200);
  textFont(myFont, 60);
  imageMode(CENTER);

  // image(myImage, mouseX, mouseY, mouseX%myImage.width, mouseY%myImage.height);
  pushMatrix();
  translate(winSize/2, winSize/2);
  float freq = map(mouseX, 0, width, 0.001, 1);
  float scale = map(sin(frameCount * freq), -1, 1, 100, 500);
  rotate(radians(frameCount * freq));

  image(myImage, 0, 0, scale, scale);
  fill(200,0,255);
  text("I'm a bunny!", scale, scale);
  popMatrix();


  
}
