Particle[] p = new Particle  [100];
background b = new background();
clock c = new clock();
float spring = 0.0000001;

void setup()
{
  size(800, 800);
   
  b.render(p);
  
  stroke(255);
  
  
}

void draw()
{
  background(255);
  b.update(p);
  filter(BLUR, 0.7);
  frameRate(60);
  c.render(); 
  
}