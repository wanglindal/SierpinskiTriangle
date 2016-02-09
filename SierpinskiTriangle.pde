int n=5;
int r= 249;
int g= 82;
int b= 82;
public void setup()
{
	size(500,500);
	
	
}
public void draw()
{background(97,208,134);
   sierpinski(0,500,500);
   
}
public void keyPressed()//optional
{
  
  
  if(keyCode==UP)
  {
  	System.out.println(n);
    n=n-15;
    r=255;
    g=129;
    b=31;
    if(n<=0)
    	{ n= 1;}
  }
  else if(keyCode == DOWN)
  {
  	n=n+15;
   
  	System.out.println(r);

  	
  	
  	if(n>=500)
  		{n=500;}
  }
 
}
public void sierpinski(int x, int y, int len) 
{
	if(len<=n)
	{

	fill(r,g,b); //pink
     triangle(x,y,x+len,y, x+(len/2) , y-len);
    }
    else 
    {
    	sierpinski(x,y, len/2);
    	sierpinski(x+(len/2),y, len/2);
    	sierpinski(x+(len/4),y-(len/2), len/2);
    }
}
