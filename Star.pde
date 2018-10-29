public class Star //note that this class does NOT extend Floater
{
	private int myX;
	private int myY;
	private int myoColor;
	public Star()
	{
		myX = ((int)(Math.random()*801));
		myY = ((int)(Math.random()*801));
		myoColor = color(((int)(Math.random()*256)),((int)(Math.random()*256)),((int)(Math.random()*256)));
	}
	public void draw()
	{
		fill(myoColor);
		ellipse(myX,myY,5,5);
	}
}
