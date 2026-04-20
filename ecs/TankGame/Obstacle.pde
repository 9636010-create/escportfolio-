class Obstacle {
  // Member varaiables
  float x, y, w, h, xspeed, yspeed, health;
  PImage obst;

  //Constructor
  // you dont konw where you want to put them
  // custom spawn position
  //
  // store you pos in vars
  // is it going to move YES
  // custom speed? YES
  // destructable
  Obstacle(float x, float y, float w, float h, float xspeed, float yspeed, float health) {
    obst = loadImage("obst.png");
    this.x = x; // we have x up top and we have x in our constructor so now we make our class x = to our constructor x "this." = the class version
    this.y = y;
    this.w = w;
    this.h = h;
    this.xspeed = xspeed;
    this.yspeed = yspeed;
    this.health = health;
  }

  void move() {
    // so our speed is our change in x and y every frame right?
    // so what we'll do is use this move function in our tankgame draw
    // so now we only need to change our x and y by our xspeed and yspeed respectively
    // so we have a value x and we want ot assign it value x + xspeed
    x = x + xspeed;
    y = y + yspeed;
    // here there is a mistake but we'll fix that later that is the issue I was talking about

    //first task is figure out when the obstacle reaches a left or right wall
    // every frame lets ask the question is my obstacle touching gthe left or righ wall
    // earlier I told you abotu the assignment operator = but now how do we chek for equality ==
    if (x <= 0 || x + w >= width) {
      xspeed = -1* xspeed;
    }
    if (y - h/2 <= 0 || y + h / 2 >= height) {
      yspeed = -1* yspeed;
    }
  }

  void display() {
    imageMode(CENTER);
    image(obst, x, y);
  }
}
