class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -4;
    yCorners[0] = 2;
    xCorners[1] = 0;
    yCorners[1] = 6;
    xCorners[2] = 16;
    yCorners[2] = 0;
    xCorners[3] = 0;
    yCorners[3] = -6;
    xCorners[4] = -4;
    yCorners[4] = -2;
    myColor = color(255, 255, 255);
    myCenterX = 200;
    myCenterY = 200;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void plusX(double x) {
    myCenterX += x;
  }
  public void plusY(double y) {
    myCenterY += y;
  }
}
