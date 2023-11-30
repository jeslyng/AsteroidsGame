//your variable declarations here
Star[] bubbles = new Star[100];
Spaceship spacey = new Spaceship();
ArrayList<Asteroid> rocks = new ArrayList<Asteroid>();
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
  translate(200, 200);
  for (int i = 0; i<bubbles.length; i++) {
    bubbles[i].move();
    bubbles[i].show();
  }
  for (int i = 0; i<rocks.size(); i++) {
    rocks.get(i).move();
    rocks.get(i).show();
    double d = dist(spacey.getX(), spacey.getY(), rocks.get(i).getX(), rocks.get(i).getY());
    if (d<10) {
      rocks.remove(i);
    }
  }
  if (t>100)
    t = 0;
  System.out.println(rocks.size());
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
  }
}
