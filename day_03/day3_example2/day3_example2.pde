PImage myImage;
int winSize = 800;
int imgSize = 200;
int currentImgSize;
int currentRadius;
int constantRadius = 566;
float ratio;

void setup(){
  size (winSize, winSize);
  myImage = loadImage("displeasedBunny.png");
  ellipse(400,400,10,10);
}

void draw() {
  currentRadius = int(sqrt((mouseX - winSize/2)*(mouseX - winSize/2) + (mouseY - winSize/2)*(mouseY - winSize/2)));
  ratio = imgSize * currentRadius/constantRadius;
  currentImgSize = imgSize - int(ratio);
  imageMode(CENTER);
  image(myImage, mouseX, mouseY, currentImgSize, currentImgSize);  
  println(ratio);
}
