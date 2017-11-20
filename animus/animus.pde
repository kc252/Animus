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
PImage img;
float spring = 0.0000001;
PFont font;

void setup()
{
  img = loadImage("abstergo.png");
  img.resize(100,100);

  size(800, 800);
  backg.render(p);
  stroke(255);
  c.render();
  
  PImage b = loadImage("dropbox.png");
  b.resize(60,60);

  PImage b1 = loadImage("facebook.png");
  b1.resize(60,60);
  
  PImage b2 = loadImage("google+.png");
  b2.resize(50,60);
  
  PImage b3 = loadImage("instagram.png");
  b3.resize(60,50);
  
  PImage b4 = loadImage("linkedin.png");
  b4.resize(50,50);
  
  PImage b5 = loadImage("twitter.png");
  b5.resize(60,60);
  
  PImage b6 = loadImage("skype.png");
  b6.resize(60,60);
  
  PImage b7 = loadImage("snapchat.png");
  b7.resize(60,60);
  
  PImage b8 = loadImage("youtube.png");
  b8.resize(60,60);
  
  PImage b9 = loadImage("whatsapp.png");
  b9.resize(60,60);
 
  
  int x = width - b.width;
  int y = height/2 - b.height/2; 
  int w = b.width;
  int h = b.height;

  
  button = new ImageButtons(x, y, w, h, b);
  button1 = new ImageButtons(x - b.width, y, w, h, b1);
  button2= new ImageButtons(x - b1.width*2+10, y, w, h, b2);
  button3= new ImageButtons(x - b1.width*3+5, y+10, w, h, b3);
  button4= new ImageButtons(x - b1.width*4+10, y+10, w, h, b4);
  button5= new ImageButtons(x - b1.width*5-200, y+5, w, h, b5);
  button6= new ImageButtons(x - b1.width*6-200+5, y+3, w, h, b6);
  button7= new ImageButtons(x - b1.width*7-200, y+7, w, h, b7);
  button8= new ImageButtons(x - b1.width*8-200,y+2, w, h, b8);
  button9= new ImageButtons(x - b1.width*9-200, y+5, w, h, b9);
  
  
}

void draw()
{
  
  background(255);
  backg.update(p);
  c.update(); 
  button.display();
  button1.display();
  button2.display();
  button3.display();
  button4.display();
  button5.display();
  button6.display();
  button7.display();
  button8.display();
  button9.display();
  
  image(img, 270, 100);
  font = createFont("ac3_abstergosans_lite_by_jmchoppergunnernl-d6e089c.ttf", 48);
  textFont(font, 56);
  fill(0);
  text("Abstergo", 360, 145);
  textSize(44);
  text("Industries" , 375 , 185);
  textSize(16);
  text("\"We change the world. Every day, in a hundred different ways\"", 235, 230);
  textSize(20);
  text("YEAR  " + year() + "   MONTH  " + month() + "   DAY  " + day() , 290, 20) ;
 
  frameRate(60);
  
  
}

void mousePressed(){
  if(button.update() == true){link("https://dropbox.com");}
  else if(button1.update() == true){link("https://facebook.com");}
  else if(button2.update() == true){link("https://plus.google.com");}
  else if(button3.update() == true){link("https://instagram.com");}
  else if(button4.update() == true){link("https://linkedin.com");}
  else if(button5.update() == true){link("https://twitter.com");}
  else if(button6.update() == true){link("https://skype.com");}
  else if(button7.update() == true){link("https://snapchat.com");}
  else if(button8.update() == true){link("https://youtube.com");}
  else if(button9.update() == true){link("https://whatsapp.com");}
  
  
}