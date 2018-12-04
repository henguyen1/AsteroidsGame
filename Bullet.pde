public class Bullet extends Floater
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
	public Bullet(Spaceship bob)
	{
		myCenterX = bob.getX();
		myCenterY = bob.getY();
		myPointDirection = bob.getPointDirection();
		double dRadians = myPointDirection * (Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + bob.getDirectionX();
		myDirectionY = 5 * Math.sin(dRadians) + bob.getDirectionY();
	}

	public void show()
	{
		fill(myColor);   
    	stroke(myColor);
    	ellipse(200,200,5,5);   
    	translate((float)myCenterX, (float)myCenterY);
    	float dRadians = (float)(myPointDirection*(Math.PI/180));
    	rotate(dRadians);
    	rotate(-1*dRadians);
    	translate(-1*(float)myCenterX, -1*(float)myCenterY);
	}
}