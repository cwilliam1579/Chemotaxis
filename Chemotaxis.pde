Bacteria[] bob;
void setup()
{
  size(500, 500);
  frameRate(60);
  background(0, 255, 255);
  bob=new Bacteria [25];
  for (int i=0; i<bob.length; i++)
    bob[i]=new Bacteria();
}
void draw()
{
  for (int i=0; i<bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
  }

  if (keyPressed) {
    if (key == 'r') {
      background(0, 255, 255);
    }
  }
}
class Bacteria
{
  int x, y, c, r;
  Bacteria() {
    x=250;
    y=250;
    c=color(255, 0, 255);
    r=10;
  }
  void move () {
    if (mouseX>x)
      x=x+(int)(Math.random()*5)-1;
    else
      x=x+(int)(Math.random()*5)-3;
    if (mouseY>y)
      y=y+(int)(Math.random()*5)-1;
    else
      y=y+(int)(Math.random()*5)-3;
  }


  void show () {
    fill(c);
    ellipse(x, y, r, r);
  }
}
