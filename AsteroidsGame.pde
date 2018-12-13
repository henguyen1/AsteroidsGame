Spaceship theShip;
Star [] bunchstars;
ArrayList <Asteroid> bunchAster;
ArrayList <Bullet> newGuy = new ArrayList <Bullet>();
int life;
int score;
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
	for (int i = 0;i< bunchstars.length;i++) //draws stars
	{
		bunchstars[i].draw();
	}
	for (int i = 0; i < bunchAster.size()-1; i++) //draws asteroids
	{
		bunchAster.get(i).show();
		bunchAster.get(i).move();
	}
	theShip.show();                               // draws the spaceship
	theShip.move();								  //draws the  spaceship
	for (int i = 0; i <= bunchAster.size()-1 ;i++) // checks for collision with ship
	{
		double d = dist(bunchAster.get(i).getX(),bunchAster.get(i).getY(),theShip.getX(),theShip.getY());
		if (d < 15) 
		{
			bunchAster.remove(i);
			life--;
		}
	}
	for (int i = newGuy.size()-1; i >= 0;i--)      // draws the bullets
	{
		newGuy.get(i).show();
		newGuy.get(i).move();
		for (int a = bunchAster.size()-1;a >= 0;a--)
		{
			double c = dist(newGuy.get(i).getX(),newGuy.get(i).getY(),bunchAster.get(a).getX(),bunchAster.get(a).getY());
			{
				if(c <15)
				{
					newGuy.remove(i);
					bunchAster.remove(a);
					break;
				}
			}
		}
	}
	
	if (life > 0)
	{
		textSize(50);
		fill(255);
		text("Lives: "+ life,610,40);
	}
	//will check if life = 0
	if(life == 0)
	{
		background(0);
		textSize(64);
		fill(255);
		text("You Lost!",250,400);
		textSize(20);
		text("Refresh to restart",300,500);
		noLoop();
	}	
	score = 0;
	textSize(50);
	fill(255);
	text("Score: "+score,10,40);
	fill(0);

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
	else if (key == ' ')
	{
		newGuy.add(new Bullet(theShip));
	}
	//cheat to remove all asteroids
	if (key== 'p')
	{
		for(int i = 0; i < bunchAster.size()-1;i++)
		{
			bunchAster.remove(i);
		}

	}
}
		
