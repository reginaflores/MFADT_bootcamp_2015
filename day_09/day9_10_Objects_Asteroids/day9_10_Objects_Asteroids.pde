import ddf.minim.*;
Minim minim;
AudioPlayer soundShoot;

Player ship;
ArrayList<Shot> shots;
ArrayList<Asteroid> asteroids;

// boolean keyUp = false;
boolean keyLeft = false;
//boolean keyDown = false;
boolean keyRight = false;
boolean keyShoot = false;

int score;

void setup() {
  size(1000, 800);
  frameRate(30);
  background(10);
  ship = new Player(width/2, height/2);
  shots = new ArrayList<Shot>();
  asteroids = new ArrayList<Asteroid>();
  minim = new Minim(this);
  soundShoot = minim.loadFile("laser.wav");
  noCursor();
  score = 0;
  restart();
}

void draw() {
  rectMode(CORNER);
  noStroke();
  fill(10, 80);
  rect(0, 0, width, height);
  
  fill(255);
  textAlign(CENTER);
  textSize(30);
  
  String scoreText = "SCORE: " + score;
  text(scoreText, width*0.5, 40);
  
  ship.display();
  ship.update();
  
  //The higher the score...
  int maxAsteroids = score+3; // ...the more asteroids!
  int newAsteroidTiming = 30-score; // ...and the faster they spawn!!
  float asteroidSpeed = random(score*0.25+1, score*0.25+4); //...and the faster they go!!!
  
  if (asteroids.size () < maxAsteroids && frameCount % newAsteroidTiming == 0){ 
   asteroids.add(new Asteroid(random(width), 0, asteroidSpeed)); 
  }

  for (int i = 0; i < shots.size(); i++) {
    Shot tempShot = shots.get(i);
    tempShot.update();
    tempShot.display();
    tempShot.dissipate(i);
  }

  for (int i = 0; i < asteroids.size (); i++) {
    Asteroid tempAst = asteroids.get(i);
    tempAst.update();
    tempAst.display();
    if (tempAst.y > height+tempAst.w*0.5){
      asteroids.remove(i);
    }
    for (int j = 0; j < shots.size (); j++) {
      Shot tempShot = shots.get(j);
      tempAst.shotCollision(tempShot, tempAst, i, j);
    }
    if (ship.alive == true) {
      tempAst.playerCollision(ship, tempAst);
    }
    
    if (ship.alive == false) {
      restart();
    }
  } 
}

void keyPressed() {
  if (key == CODED) {
    // if (keyCode == UP) { 
    //   keyUp = true;
    // }
    if (keyCode == LEFT) { 
      keyLeft = true;
    }
    if (keyCode == RIGHT) { 
      keyRight = true;
    }
    //    if (keyCode == DOWN) { keyDown = true; }
  }
  if (key == ' ') {
    keyShoot = true;
  }
}

void keyReleased() {
  if (key == CODED) {
    // if (keyCode == UP) { 
    //   keyUp = false;
    // }
    if (keyCode == LEFT) { 
      keyLeft = false;
    }
    if (keyCode == RIGHT) { 
      keyRight = false;
    }
    //    if (keyCode == DOWN) { keyDown = false; }
  }
  if (key == ' ') {
    keyShoot = false;
  }
}

void restart() {
  asteroids.clear();
  score = 0;
  asteroids.add(new Asteroid(random(width), 0, random(2, 6)));
  asteroids.add(new Asteroid(random(width), 0, random(2, 6)));
  asteroids.add(new Asteroid(random(width), 0, random(2, 6)));
  ship.x = width/2;
  ship.y = height*0.9;
  ship.velocity = new PVector(0,0);
  ship.alive = true;
}
