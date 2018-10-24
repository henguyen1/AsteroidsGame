class Spaceship extends Floater  
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


	Spaceship()
	{
		setX(400);
		setY(400);
		setDirectionX(0);
		setDirectionY(0);
		setPointDirection(0);
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		corners = 3;
  		xCorners = new int[corners];
  		yCorners = new int[corners];
  		xCorners[0] = -8;
  		yCorners[0] = -8;
  		xCorners[1] = 16;
  		yCorners[1] = 0;
  		xCorners[2] = -8;
  		yCorners[2] = 8;
  	}

  	public void show()
  	{
  		background(197);
  		line(xCorners[0],yCorners[0],xCorners[1],yCorners[1]);
  		line(xCorners[1],yCorners[1],xCorners[2],yCorners[2]);
  		line(xCorners[2],yCorners[2],xCorners[0],yCorners[0]);

  	}
}
