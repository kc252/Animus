Particle[] p = new Particle  [100];
background b = new background();
clock c = new clock();
ImageButtons button;
float spring = 0.0000001;

void setup()
{
  size(800, 800);
  b.render(p);
  stroke(255);
  c.render();
  
  
  PImage b = loadImage("dropbox.png");

  PImage r = loadImage("dropbox.png");

  PImage d = loadImage("dropbox.png");

  int x = width - b.width;

  int y = height/2 - b.height/2; 

  int w = b.width;

  int h = b.height;

  button = new ImageButtons(x, y, w, h, b, r, d);
  
}

void draw()
{
  
  background(255);
  b.update(p);
  c.update(); 
  button.update();
  button.display();
  filter(BLUR, 0.7);
  frameRate(60);
  
  
}