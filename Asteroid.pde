public class Asteroid extends Floater
{
  public void setX(int x){myCenterX = x;}
	public int getX(){return (int)myCenterX;}
	public void setY(int y){myCenterY = y;}  
  public int getY(){return (int)myCenterY;}   
  public void setDirectionX(double x){myDirectionX = x;}   
  public double getDirectionX(){return (double)myDirectionX;}   
  public void setDirectionY(double y){myDirectionY = y;}   
  public double getDirectionY(){return (double)myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return (double)myPointDirection;} 
  private int rotSpeed;
  public int getrotSpeed(){return rotSpeed;}

  public Asteroid()
  {
    if (Math.random() > .5)
    {
  		rotSpeed = (int)(Math.random()*5)+1;
  	}
  	else 
  	{
  		rotSpeed = (int)(Math.random()*(-5))-1;
  	}
    setX((int)(Math.random()*801));
    setY((int)(Math.random()*801));
    setDirectionX((Math.random()*5) - 2);
    setDirectionY((Math.random()*5) - 2);
		myColor = color(148,148,148);
		corners = 9;
		xCorners = new int[corners];
  	yCorners = new int[corners];
  	xCorners[0] = -9;
  	yCorners[0] = 8;
  	xCorners[1] = 0;
  	yCorners[1] = 8;
  	xCorners[2] = 5;
  	yCorners[2] = 7;
  	xCorners[3] = 8;
  	yCorners[3] = 4;
  	xCorners[4] = 8;
  	yCorners[4] = -2;
  	xCorners[5] = 3;
  	yCorners[5] = -7;
  	xCorners[6] = 4;
  	yCorners[6] = -8;
  	xCorners[7] = -3;
  	yCorners[7] = -8;
  	xCorners[8] = -8;
  	yCorners[8] = 3;
  }
  public void move()
  {  
    turn(getrotSpeed());
    super.move();
  }
  	
}