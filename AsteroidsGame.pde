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
	for (int i = 0; i < 20; i++) //some asteroids r not moving...
	{
		bunchAster.add(new Asteroid());
		Asteroid aster = bunchAster.get(i);
		aster.show();
		aster.move();
	}
	bob.show();
	bob.move();
	for (int i = 0; i <= bunchAster.size()-1 ;i++)
	{
		double dist = dist(bunchAster.get(i).getX(),bunchAster.get(i).getY(),bob.getX(),bob.getY());//apparently getX() doesnt exist...
		if (dist < 20) 
		{
			bunchAster.remove(i);
		}
	}	
	for (int i = 0;i< bunchstars.length;i++)
	{
		bunchstars[i].draw();
	}
}
public void keyPressed()
{
	if (key == 'w')
	{			
		bob.accelerate(0.5);
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
