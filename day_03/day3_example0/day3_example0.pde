PImage myImage;
// first image lesson
void setup(){
  size(800, 600);
  myImage = loadImage("grumpyBunny.jpg");
}

void draw(){
  imageMode(CENTER);
  image(myImage, width/2, height/2);
}
