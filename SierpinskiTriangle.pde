int n=20;
public void setup()
{
	size(500,500);
}
public void draw()
{
   sierpinski(0,500,500);
   
}
public void keyPressed()//optional
{
	
  if(key==UP)
  {
    n=n-5;
  }
  else if(key == DOWN)
  {
  	n=n+5;
  }

}
public void sierpinski(int x, int y, int len) 
{
	if(len<=n)
	{

	fill(200);
     triangle(x,y,x+len,y, x+(len/2) , y-len);
    }
    else 
    {
    	fill(100);
    	//triangle(x,y,x+len,y, x+(len/2) , y-len);
    	sierpinski(x,y, len/2);
    	sierpinski(x+(len/2),y, len/2);
    	sierpinski(x+(len/4),y-(len/2), len/2);
    }
}
