class Star //note that this class does NOT extend Floater
{
  private double myX, myY, mySpeed, myAngle;
  private int myColor;
  public Star() {
    myX=myY=200;
    myAngle = (double)(Math.random()*6.28);
    myColor = color((int)(Math.random()*100)+156, (int)(Math.random()*100)+156, 256, 150);
    mySpeed = (double)(Math.random()*10);
  } 
  public void move() {
    if (t>100) {
      myX = myX + (double)(mySpeed*Math.cos(myAngle));
      myY = myY + (double)(mySpeed*Math.sin(myAngle));
    } else {
      myX = myX - (double)(mySpeed*Math.cos(myAngle));
      myY = myY - (double)(mySpeed*Math.sin(myAngle));
    }
    myAngle = myAngle + Math.random()*0.1;
  }
  public void show() {
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, 5, 5);
  }
}
