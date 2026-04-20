class Projectile {
  // Member varaiables
  float x, y, w, h, xspeed, yspeed;

  //Constructor
  // you dont konw where you want to put them
  // custom spawn position
  //
  // store you pos in vars
  // is it going to move YES
  // custom speed? YES
  // destructable
  Projectile(float x, float y, float w, float h, float xspeed, float yspeed) {
    this.x = x; // we have x up top and we have x in our constructor so now we make our class x = to our constructor x "this." = the class version
    this.y = y;
    this.w = w;
    this.h = h;
    this.xspeed = xspeed;
    this.yspeed = yspeed;
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
  }

  void display() {
    rectMode(CENTER);
    fill(255, 0, 0);
    rect(x, y, w, h);
  }
  boolean collides(Obstacle o) {
    float lw, rw, tw, bw;
    lw = o.x;
    rw = o.x + o.w;
    tw = o.y - o.h/2;
    bw = o.y + o.h/2;
    float l, r, t, b; 
    l = x - w/2; 
    r = x + w/2; 
    t = y - h/2;
    b = y + h/2; 
    int possible = 0; 
    if((r >= lw && r <= rw) || (l >= lw && l <= rw)){
      possible++; 
    }
    if(t <= bw && t >= tw || b <= bw && b >= tw){
      possible++; 
    }
    return possible == 2; 
  }
  // we'll need some colision method but we can do that later
}
