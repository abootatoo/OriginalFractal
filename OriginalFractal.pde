public void setup()
{
  size(790,700); 

}
public void draw()
{
  background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  fractal(0,0,800);
  ellipse(790/2,550,300,297);
}
public void fractal(int x, int y, int size)
{
  if (size < 10)
  {
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse(x,y,size,size);
  }
  else
  {
    fractal(x,y,size/2);
    fractal(x+size/2,y,size/2);
    fractal(x+size/4,y+size/4,size/2);
  }
}