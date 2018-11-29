Spaceship bob;
Star [] bunchstars;
ArrayList <Asteroid> bunchAster;
public void setup() 
{
	bunchAster = new ArrayList <Asteroid>();
	bob = new Spaceship();
	size(800,800); 
	bunchstars = new Star[1000];
	for (int i = 0;  i <bunchstars.length;i++)
	{
		bunchstars[i] = new Star();
	}
}
public void draw() 
{
	background(0);
	for (int i = 0;i< bunchstars.length;i++)
	{
		bunchstars[i].draw();
	}
	for (int i = 0; i < 20; i++) 
	{
		bunchAster.add(new Asteroid());
		Asteroid aster = bunchAster.get(i);
		aster.show();
		aster.move();
	}
	bob.show();
	bob.move();
	/*for (int i = 0; i <= bunchAster.size()-1 ;i++) //this will see if spaceship has collided with asteroid
	{
		double dist = dist(bunchAster.get(i).getX(),bunchAster.get(i).getY(),bob.getX(),bob.getY());
		if (dist < 15) 
		{
			bunchAster.remove(i);
		}
	}	*/
}
public void keyPressed()
{
	if (key == 'w')
	{			
		bob.accelerate(1);
	}
	else if (key == 'a')
	{
		bob.turn(-10);
	}
	else if (key == 'd')
	{
		bob.turn(10);
	}
	else if (key == 'h')
	{
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.setY((int)(Math.random()*801));
		bob.setX((int)(Math.random()*801));
		bob.setPointDirection((int)(Math.random() * 361));
	}
}
