class Asteroid extends Floater
{
  private double rotSpeed;

  public Asteroid() {
    corners = 5;
    xCorners = new int[] {-9, 3, 4, -7, -9};
    yCorners = new int[] {-4, -7, 3, 9, -4};
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    myCenterX = Math.random()*400;
    myCenterY = Math.random()*400;
    myXspeed = 1;
    myYspeed = 1;
    myPointDirection = Math.random()*720-360;
    rotSpeed = 3;
  }
  public void move() {       
    super.move();
    turn(rotSpeed);
  }
}
