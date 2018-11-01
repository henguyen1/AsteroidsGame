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

  	public Asteroid()
  	{
  		setX((int)(Math.random()*801));
  		setY((int)(Math.random()*801));
  		setDirectionX(0);
		setDirectionY(0);
		setPointDirection(0);
		myColor = color(255,255,255);
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
  		//change the x and y coordinates by myDirectionX and myDirectionY       
    	myCenterX += myDirectionX;    
    	myCenterY += myDirectionY;   

    	//wrap around screen    
    	if(myCenterX >width)
    	{     
      		myCenterX = 0;    
    	}    
    	else if (myCenterX<0)
    	{     
      		myCenterX = width;    
    	}    
    	if(myCenterY >height)
    	{    
     		myCenterY = 0;    
    	} 
    
    	else if (myCenterY < 0)
    	{     
      		myCenterY = height;    
    	}  
  	}
}