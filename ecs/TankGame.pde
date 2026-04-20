Tank t1;
Obstacle o1; // here I'm declaring an obstacle
PImage player;
PImage bg;
ArrayList<Projectile> lasers;
ArrayList<Obstacle> obstacles; // here you declared the list now what do you need to do
void setup() {
  size(500, 500);
  t1 = new Tank();
  o1 = new Obstacle(200, 200, 20, 20, 1, 3, 5); // here I initialize it with x = 200 y =200 w = 20 h = 20 xspeed = 1, yspeed = 3, health = 5
  bg = loadImage("clouds.png");
  lasers = new ArrayList<Projectile>();
  obstacles = new ArrayList<Obstacle>();
  player = loadImage("Tank.png");
  // now lets make random obstacles appear maybe lets start with 4
  for (int i = 0; i < 4; i = i+1) {
    obstacles.add(new Obstacle((random(1, width - 1 )), (random(1, height - 1 )), 20.0, 20.0, (random(1, 10 )), (random(1, 10)), 100.0));
  }
}

void draw() {
  background(bg);
  t1.display();
  o1.display();
  o1.move();

  for (int i = 0; i < lasers.size(); i++) {
    Projectile l = lasers.get(i);
    l.display();
    l.move();
    // we need to make collision for the obstacles and lasers
    // we're going to create a new arraylist of obstacles so that we can have a lot of obstacles
  }
  for (int i = 0; i < obstacles.size(); i++) {
    Obstacle o = obstacles.get(i);
    o.display();
    o.move();
  }
  for (int i = 0; i > obstacles.size(); i++) {
   Obstacle o = obstacles.get(i);
   o.display();
   o.move();
  }
  //t1.move('w');
}

void keyPressed() {
  if (key == 'l') {
    lasers.add(new Projectile(t1.x, t1.y, 20, 3, 0, 5));
  }
  if (key == 'w') {
    t1.move('w');
  } else if (key == 's') {
    t1.move('s');
  } else if (key == 'a') {
    t1.move('a');
  } else if (key == 'd') {
    t1.move('d');
  }
}


// here write about what you learn 
// statement 1 is executed 1 time before the execution of the code block 
// statement 2 defines the condition for executing the code block 
//statement 3 is executed every time after the code blobk has been executed. 
// keep learning!
// write me a for loop to print numbers 0 through 10 
// remember what you just learned! 
