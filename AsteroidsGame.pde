Spaceship bob;
Star [] bunchstars;
public void setup() 
{
	size(800,800); 
	bob = new Spaceship();
	bunchstars = new Star[1000];
	for (int i = 0;  i <bunchstars.length;i++)
	{
		bunchstars = new Star();
	}

}
public void draw() 
{
	background(0);
	bob.show();
	for (int i =0; bunchstars.length;i++)
	{
		bunchstars[i].show();
	}

}

public void keyPressed()
{
	if (key == 'w')
	{
		bob.accelerate(1);
		bob.move();
	}
	else if (key == 'a')
	{
		bob.turn(-10);
		bob.move();
		bob.turn(-10);
		
	}
	else if (key == 'd')
	{
		
		bob.turn(10);
		bob.move();
		bob.turn(10);

	}
	else if (key == 'h')
	{
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.setY((int)(Math.random()*801));
		bob.setX((int)(Math.random()*801));
	}

}