class Player {
  float x, y;
  PVector velocity;
  float shotTimer, shotRate;
  float maxVelocity;
  boolean alive;
  
  Player(float x, float y) {
    this.x = x;
    this.y = y;
    
    alive = true;
    shotRate = 35;
    shotTimer = 0;
    maxVelocity = 10;
  }
  
  void display() {
    if (alive == true) {
      pushMatrix();
      translate(x, y);
      noFill();
      stroke(200, 255, 255, 180);
      triangle(0, -12, 8, 8, -8, 8);
      popMatrix();
    }
  }
  
  void update() {
    if (alive == true) {
      if (x < 0) {
        x = width;
      }
      if ( x > width) {
        x = 0;
      }
      // if ( y < 0) {
      //   y = height;
      // }
      // if ( y > height) {
      //   y = 0;
      // }
      x += velocity.x;
      
      if (keyLeft == true) {
        velocity.x -= 0.5;
      } else if (keyRight == true) {
        velocity.x += 0.5;
      } else {
        velocity.x -= velocity.x * 0.1;
      }
      
      if (shotTimer > 0) {
        shotTimer --;
      } else {
        shotTimer = 0;
      }
      
      if (keyShoot == true) {
        if (shotTimer == 0) {
          shoot();
          shotTimer = shotRate;
        }
      }
    }
  }
  
  void shoot() {
    if ( alive == true) {
      soundShoot.play();
      soundShoot.rewind();
      shots.add(new Shot(x, y, 10));
    }
  }
}
