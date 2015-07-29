class Asteroid
{
  float x, y;
  float velocity; //angle, rotation, rotationRate;
  float w;
  // int type;
  
  //constructor
  Asteroid(float x, float y, float velocity)
  {
    this.x = x;
    this.y = y;
    this.velocity = velocity;
    // this.type = type;
    // this.angle = angle;
    // this.rotation = rotation;
    w = random(30,100);
    //determine size based on 'type'
    // if (type == 0){
    //   w = random(30,100);
      //the following types have been omitted for simplicity. Will not have time to do them in class.
    // } else if (type == 1){
    // } else if (type == 2) {
    // } else if (type == 3) {
    // }
  }
  
  void update() {
    //check position against screen size
    // if ( x < 0) { x = width;}
    // if ( x > width) { x = 0;}
    // if ( y < 0) { y = height;}
    // if ( y > height) { y = 0;}
    y += velocity;
  }
  void display() {
    pushMatrix();
    translate(x, y);
    noFill();
    stroke(200,255,255,180);
    ellipse(0,0,w,w);
    popMatrix();
  }
  void shotCollision(Shot shot, Asteroid asteroid, int asteroidIndex, int shotIndex){
    if (dist(x, y, shot.x, shot.y) < w/2 + 2) {
      shots.remove(shotIndex);
      asteroids.remove(asteroidIndex);
      score++;
    }
  }
  
  void playerCollision(Player ship, Asteroid asteroid){
    if (dist(x, y, ship.x, ship.y) < w/2 + 5) {
      fill(255,255,255,180);
      ellipse(ship.x, ship.y, 180, 180);
      ship.alive= false;
    }
  }
}
