PImage myImage;
int winSize = 510;
void setup(){
  background(200);
  size (winSize, winSize);
  // background(255);
  myImage = loadImage("displeasedBunny.png");
}

void draw() {
  //Comment and uncomment the following line to see difference
  // background(200);
  imageMode(CENTER);
  int r = mouseX/2;
  int g = 0;
  int b = mouseY/2;
  tint(r,g,b);
  image(myImage, mouseX, mouseY);
}
