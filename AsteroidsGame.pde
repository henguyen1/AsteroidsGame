Spaceship bob;
Star [] bunchstars;
public void setup() 
{
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
	for (int i =0;i< bunchstars.length;i++)
	{
		bunchstars[i].draw();
	}
	
	bob.show();
	bob.move();
}

public void keyPressed()
{
	if (key == 'w')
	{			
		bob.accelerate(.1);
		
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