int mood = 1;

// happy mode balls
int numBalls = 6;
float[] x = new float[numBalls];
float[] y = new float[numBalls];
float[] dx = new float[numBalls];
float[] dy = new float[numBalls];
float[] size = new float[numBalls];
color[] colors = new color[numBalls];

void setup() {
  size(600, 400);

  // initialize balls
  for (int i = 0; i < numBalls; i++) {
    x[i] = random(width);
    y[i] = random(height);
    dx[i] = random(-3, 3);
    dy[i] = random(-3, 3);
    size[i] = random(20, 40);
    colors[i] = color(random(255), random(255), random(255));
  }
}

void draw() {
  if (mood == 1) {
    calmMood();
  } else if (mood == 2) {
    angryMood();
  } else if (mood == 3) {
    happyMood();
  }
}

// CALM: blue, slow floating circles
void calmMood() {
  background(100, 150, 255);
  fill(255, 150);
  noStroke();

  for (int i = 0; i < 10; i++) {
    float xPos = width/2 + sin(frameCount * 0.02 + i) * 200;
    float yPos = height/2 + cos(frameCount * 0.02 + i) * 150;
    ellipse(xPos, yPos, 40, 40);
  }
}

// ANGRY: red, jittery squares
void angryMood() {
  background(200, 50, 50);
  fill(0);
  noStroke();

  for (int i = 0; i < 25; i++) {
    float xPos = random(width);
    float yPos = random(height);
    rect(xPos + random(-10, 10), yPos + random(-10, 10), 20, 20);
  }
}

// HAPPY: bouncing colorful balls
void happyMood() {
  background(255, 220, 100);

  for (int i = 0; i < numBalls; i++) {
    fill(colors[i]);
    ellipse(x[i], y[i], size[i], size[i]);

    x[i] += dx[i];
    y[i] += dy[i];

    // bounce
    if (x[i] < 0 || x[i] > width) dx[i] *= -1;
    if (y[i] < 0 || y[i] > height) dy[i] *= -1;
  }
}

// KEY INPUT
void keyPressed() {
  if (key == '1') {
    mood = 1;
  } else if (key == '2') {
    mood = 2;
  } else if (key == '3') {
    mood = 3;
  }
}
