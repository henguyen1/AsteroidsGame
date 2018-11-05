Spaceship bob;
Star [] bunchstars;
Asteroid[] bunchAster;
public void setup() 
{
	bob = new Spaceship();
	size(800,800); 
	bunchstars = new Star[1000];
	for (int i = 0;  i <bunchstars.length;i++)
	{
		bunchstars[i] = new Star();
	}
	bunchAster = new Asteroid[20];
	for (int i = 0; i < bunchAster.length; i++)
	{
		bunchAster[i] = new Asteroid();
		bunchAster[i].accelerate(1);
	}


}
public void draw() 
{
	background(0);
	for (int i =0;i< bunchstars.length;i++)
	{
		bunchstars[i].draw();
	}
	for (int i =0;i< bunchAster.length;i++) 
	{
		bunchAster[i].show();
		bunchAster[i].move();
	}
	
	bob.show();
	bob.move();

	//somehow make asteroid dheck for collision for example if a point on the asteroid changes to the color of the spaceship thats a collision

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
