Spaceship theShip;
Star [] bunchstars;
ArrayList <Asteroid> bunchAster;
Bullet newGuy;
int life;
public void setup() 
{
	bunchAster = new ArrayList <Asteroid>();
	theShip = new Spaceship();
	size(800,800); 
	bunchstars = new Star[1000];
	for (int i = 0;  i <bunchstars.length;i++)
	{
		bunchstars[i] = new Star();
	}
	for (int i = 0; i < 20; i++) 
	{
		bunchAster.add(new Asteroid());
	}	
	life = 3;
}
public void draw() 
{
	background(0);
	for (int i = 0;i< bunchstars.length;i++)
	{
		bunchstars[i].draw();
	}
	for (int i = 0; i < bunchAster.size()-1; i++) 
	{
		bunchAster.get(i).show();
		bunchAster.get(i).move();
	}
	theShip.show();
	theShip.move();
	for (int i = 0; i <= bunchAster.size()-1 ;i++)
	{
		double d = dist(bunchAster.get(i).getX(),bunchAster.get(i).getY(),theShip.getX(),theShip.getY());
		if (d < 15) 
		{
			bunchAster.remove(i);
			life--;
		}
	}	
	//will check if life = 0
	if(life == 0)
	{
		background(0);
		noLoop();
	}	
	//regulates speed so you can't go to fast
	if (theShip.getDirectionX() > 6)
	{
		theShip.setDirectionX(6);
	}
	else if (theShip.getDirectionY() > 6)
	{
		theShip.setDirectionY(6);
	}
	else if (theShip.getDirectionX() < -6)
	{
		theShip.setDirectionX(-6);
	}
	else if (theShip.getDirectionY() < -6)
	{
		theShip.setDirectionY(-6);
	}
}
public void keyPressed()
{
	if (key == 'w')
	{			
		theShip.accelerate(1);
	}
	else if (key == 'a')
	{
		theShip.turn(-10);
	}
	else if (key == 'd')
	{
		theShip.turn(10);
	}
	else if (key == 'h')
	{
		theShip.setDirectionX(0);
		theShip.setDirectionY(0);
		theShip.setY((int)(Math.random()*801));
		theShip.setX((int)(Math.random()*801));
		theShip.setPointDirection((int)(Math.random() * 361));
	}
}
