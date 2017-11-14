Particle[] p = new Particle  [100];
background backg = new background();
clock c = new clock();

ImageButtons button;
ImageButtons button1;
ImageButtons button2;
ImageButtons button3;
ImageButtons button4;
ImageButtons button5;
ImageButtons button6;
ImageButtons button7;
ImageButtons button8;
ImageButtons button9;

ArrayList <ImageButtons> buttons = new ArrayList <ImageButtons>();
buttons.add(button);

float spring = 0.0000001;

void setup()
{
<<<<<<< HEAD
  size(800, 800);
  backg.render(p);
=======
  size(600, 600);
  b.render(p);
>>>>>>> cb7b4918ba8d58e08f443ed2ce452e00ce3c982c
  stroke(255);
  c.render();
  
  PImage b = loadImage("dropbox.png");
  b.resize(75,75);
<<<<<<< HEAD
  
  PImage b1 = loadImage("facebook.png");
  b1.resize(75,75);
  
  PImage b2 = loadImage("dropbox.png");
  b2.resize(75,75);
  
  PImage b3 = loadImage("dropbox.png");
  b3.resize(75,75);
  
  PImage b4 = loadImage("dropbox.png");
  b4.resize(75,75);
  
  PImage b5 = loadImage("dropbox.png");
  b5.resize(75,75);
  
  PImage b6 = loadImage("dropbox.png");
  b6.resize(75,75);
  
  PImage b7 = loadImage("dropbox.png");
  b7.resize(75,75);
  
  PImage b8 = loadImage("dropbox.png");
  b8.resize(75,75);
  
  PImage b9 = loadImage("dropbox.png");
  b9.resize(75,75);
 
  
=======

>>>>>>> cb7b4918ba8d58e08f443ed2ce452e00ce3c982c
  int x = width - b.width;
  int y = height/2 - b.height/2; 
  int w = b.width;
  int h = b.height;
<<<<<<< HEAD
  
  button = new ImageButtons(x, y, w, h, b);
  button1 = new ImageButtons(x - b.width, y, w, h, b1);
=======
  button = new ImageButtons(x, y, w, h, b);
>>>>>>> cb7b4918ba8d58e08f443ed2ce452e00ce3c982c
  
}

void draw()
{
  
  background(255);
  backg.update(p);
  c.update(); 
  button.display();
<<<<<<< HEAD
  button1.display();
=======
  //filter(BLUR, 0.7);
>>>>>>> cb7b4918ba8d58e08f443ed2ce452e00ce3c982c
  frameRate(60);
  
  
}

void mousePressed(){
  button.update();
  button1.update();
}