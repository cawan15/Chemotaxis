 Crawlers[] worms = new Crawlers [100]; //creating array
void setup()
{
  background (255);
  size (400,400);
  for (int i = 0; i < worms.length; i++)
  {
    worms[i] = new Crawlers(); //creating instance
  }
}
void draw()
{
  for (int i = 0; i < worms.length; i++)
  {
  worms[i].move();
  worms[i].show();
  }
}
class Crawlers
{
  int myColor;
  int myX;
  int mySize;
  float myY;
  Crawlers () //constructor: initialize member variables
  {
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
    mySize = 2;
    myX= (int)(Math.random()*400);
    myY= (int)(Math.random()*400);
}

  void move()
  {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
  }
  void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse(myX,myY,mySize,mySize);
  }
}
