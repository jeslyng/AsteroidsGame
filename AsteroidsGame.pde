//your variable declarations here
Star[] bubbles = new Star[100];
Spaceship spacey = new Spaceship();
ArrayList<Asteroid> rocks = new ArrayList<Asteroid>();
ArrayList<Bullet> balls = new ArrayList<Bullet>();
int t = 0;
public void setup() 
{
  background(0);
  size(400, 400);
  noStroke();
  for (int i = 0; i<bubbles.length; i++) {
    bubbles[i] = new Star();
  }
  for (int i = 0; i<10; i++) {
    rocks.add(i, new Asteroid());
  }
  smooth();
}
public void draw() 
{
  background(0);
  noStroke();
  spacey.move();
  spacey.show();
  for (int i = 0; i<bubbles.length; i++) {
    bubbles[i].move();
    bubbles[i].show();
  }
  for (int i = 0; i<balls.size(); i++) {
    balls.get(i).move();
    balls.get(i).show();
  }
  for (int i = 0; i<rocks.size(); i++) {
    rocks.get(i).move();
    rocks.get(i).show();
    double d = dist(spacey.getX(), spacey.getY(), rocks.get(i).getX(), rocks.get(i).getY());
    if (d<15) {
      rocks.remove(i);
    }
    for (int j = 0; j<balls.size(); j++) {
      double f = dist(balls.get(j).getX(), balls.get(j).getY(), rocks.get(i).getX(), rocks.get(i).getY());
      if (f<10) {
        rocks.remove(i);
        balls.remove(j);
        break;
      }
    }
  }
  if (t>100)
    t = 0;
  if (rocks.size()==0) {
    noLoop();
    background(0);
    stroke(0);
    text("You win!", 180, 200);
  }
}
public void keyPressed() {
  if (key == 'e') {
    spacey.turn(10);
  } else if (key == 'z') {
    spacey.accelerate(1);
  } else if (key == 'x') {
    spacey.accelerate(-1);
  } else if (key =='a') {
    spacey.plusX(-5);
  } else if (key =='d') {
    spacey.plusX(5);
  } else if (key =='w') {
    spacey.plusY(-5);
  } else if (key =='s') {
    spacey.plusY(5);
  } else if (key == 'h') {
    spacey.hyperspace();
  } else if (key == ' ') {
    balls.add(new Bullet(spacey));
  }
}
