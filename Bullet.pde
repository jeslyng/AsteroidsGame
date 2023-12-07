class Bullet extends Floater
{
  Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPD();
    accelerate(6);
    myColor = color(255,255,255);
  }
  public void show() {
    fill(myColor);   
    stroke(myColor);
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    rotate(dRadians);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
}
