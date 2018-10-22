class Spaceship extends Floater  
{   
  setX(int x){myCenterX = x;}
  getX(){return (int)myCenterX;}  
  setY(int y){myCenterY = y;}  
  getY(){return (int)myCenterY;}   
  setDirectionX(double x){myDirectionX = x;}   
  getDirectionX(){return (double)myDirectionX;}   
  setDirectionY(double y){myDirectionY = y;}   
  getDirectionY(){return (double)myDirectionY;}   
  setPointDirection(int degrees){myPointDirection = degrees;}   
  getPointDirection(){return (int)myPointDirection;} 
  SpaceShip()
  {
  	corners = 3;
  	xCorners = new int[corners];
  	yCorners = new int[corners];
  }
}
