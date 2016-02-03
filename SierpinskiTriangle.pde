int n=5;
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
  
  {
  if(keyCode==UP)
  {
    n=n-15;
    if(n<=0)
    	{ n= 0;}
  }
  else if(keyCode == DOWN)
  {
  	n=n+15;
  	System.out.println(n);
  	if(n>=500)
  		{n=500;}
  }
 }
}
public void sierpinski(int x, int y, int len) 
{
	if(len<=n)
	{
     
	fill(59,82,198); //blue
	fill(255,129,31); //orange
     triangle(x,y,x+len,y, x+(len/2) , y-len);
    }
    else 
    {
    	fill(255,129,31);
    	sierpinski(x,y, len/2);
    	sierpinski(x+(len/2),y, len/2);
    	sierpinski(x+(len/4),y-(len/2), len/2);
    }
}
