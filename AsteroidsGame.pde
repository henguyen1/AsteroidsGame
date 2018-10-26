Spaceship bob;
public void setup() 
{
	size(800,800); 
	bob = new Spaceship();
}
public void draw() 
{
	background(197);
	bob.show();
	System.out.println(myPointDirection);
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
	//else if (key == "h")
	//{
		
	//}

}