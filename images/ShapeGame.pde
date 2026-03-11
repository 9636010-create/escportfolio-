// Dani Rubio | Shape Game

int x, y, tx, ty, score;
float tw;

PImage player;
PImage target;

void setup() {

  size(800, 800);

  x = width/2;
  y = height/2;

  tx = int(random(50, width-50));
  ty = int(random(50, height-50));

  tw = 120;
  score = 0;

  player = loadImage("player.png");
  target = loadImage("target.png");
}

void draw() {

  background(#7CD3F5);

  imageMode(CENTER);

  // draw player
  image(player, x, y, 80, 80);

  target();
  scorePanel();
}

void target() {

  float d = dist(x, y, tx, ty);

  // player touches target
  if (d < 40) {

    score = score + int(tw*2);

    tx = int(random(50, width-50));
    ty = int(random(50, height-50));

    tw = 120;
  }

  if (tw < 10) {
    gameOver();
  }

  // draw target
  image(target, tx, ty, tw, tw);

  tw = tw - 0.15;
}

void scorePanel() {

  fill(0);
  textSize(24);
  text("Score: " + score, 20, 40);
}

void gameOver() {

  background(0);

  fill(255, 0, 0);
  textAlign(CENTER);

  textSize(40);
  text("Game Over!", width/2, height/2);

  noLoop();
}

void keyPressed() {

  int speed = 15;

  if (key == 'w' || key =='W' || keyCode == UP) {
    y -= speed;
  } 
  else if (key == 's' || key == 'S' || keyCode == DOWN) {
    y += speed;
  } 
  else if (key == 'a' || key == 'A' || keyCode == LEFT) {
    x -= speed;
  }  
  else if (key == 'd' || key == 'D' || keyCode == RIGHT) {
    x += speed;
  }

  // wrap around screen
  if (x > width) x = 0;
  if (x < 0) x = width;
  if (y > height) y = 0;
  if (y < 0) y = height;
}
