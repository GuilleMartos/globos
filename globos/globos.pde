class Globo
{
  float x, y,vx,vy;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
    color c=color(random(255),random(255),random(255));
      fill(c);
      ellipse(x,y,100,150);
      image(cara,x-50,y-50,50,50);
  }
  
}

ArrayList<Globo> globos;
PImage cara; //processing image

void setup()
{
  size(640,480);
  globos = new ArrayList<Globo>();  
  cara= loadImage("cara.png");
}

void draw()
{
  background(0,154,0);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
