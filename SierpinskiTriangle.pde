public void setup()
{
  background(0);
  size(400,400);
  sierpinski(100, 300, 200);
}
public void draw()
{
  
}
public void mousePressed()
{
  background(0);
  sierpinski(mouseX, mouseY, 200);
}
public void sierpinski(int x, int y, int len)
{
  if(len<=20)
  {
    triangle(x,y, x+len/2, y-len, x+len, y);
  }
  else
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
