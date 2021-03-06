import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

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
ImageButtons Abstergo_b;
ArrayList <ImageButtons> buttons = new ArrayList <ImageButtons>();
PImage img;
float spring = 0.0000001;
PFont font;
Minim minim;
AudioPlayer song;
PGraphics canvas;

boolean played = true;
boolean start = true;

void setup()
{
  fullScreen();
  backg.render(p);
  stroke(255);
  c.render();
  
  //button images
  PImage b = loadImage("dropbox.png");
  PImage b1 = loadImage("facebook.png");
  PImage b2 = loadImage("google+.png");
  PImage b3 = loadImage("instagram.png");
  b3.resize(150,100);
  PImage b4 = loadImage("linkedin.png");
  b4.resize(125,125);
  PImage b5 = loadImage("twitter.png"); 
  PImage b6 = loadImage("skype.png"); 
  PImage b7 = loadImage("snapchat.png");  
  PImage b8 = loadImage("youtube.png");
  PImage b9 = loadImage("whatsapp.png");
  
  
  int x = width - b.width;
  int y = height/2 - b.height/2; 
  int w = b.width;
  int h = b.height;

  PImage img = loadImage("abstergo.png");
  Abstergo_b = new ImageButtons (x - b.width*7.7, y-385, w, h, img);
  img.resize(150,150);
  
  button = new ImageButtons(x - b.width*0.5, y, w, h, b);
  button1 = new ImageButtons(x - b.width*1.5, y, w, h, b1);
  button2= new ImageButtons(x - b1.width*2.4, y, w, h, b2);
  button3= new ImageButtons(x - b1.width*3.6, y+20, w, h, b3);
  button4= new ImageButtons(x - b1.width*4.6, y+10, w, h, b4);
  button5= new ImageButtons(x - b1.width*9, y, w, h, b5);
  button6= new ImageButtons(x - b1.width*9.9, y, w, h, b6);
  button7= new ImageButtons(x - b1.width*11, y+5, w, h, b7);
  button8= new ImageButtons(x - b1.width*12,y, w, h, b8);  
  button9= new ImageButtons(x - b1.width*13, y, w, h, b9);
  
  if(start){
    
  minim = new Minim(this);
  song = minim.loadFile("startup.mp3");
  song.play();
  start = false;
  played = false;
  
  }
  
}

void draw()
{
  
  frameRate(60);
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
  Abstergo_b.display();
  
  font = createFont("abstergo.ttf", 48);
  textFont(font, 86);
  fill(0);
  text("Abstergo", width/2.1, height/7);
  textSize(54);
  text("Industries" , width/2 , height/5.3);
  textSize(24);
  text("\"We change the world. Every day, in a hundred different ways\"", width/2.75, height/3.9);
  textSize(32);
  text("YEAR  " + year() + "   MONTH  " + month() + "   DAY  " + day() , width/2.5, height/30) ;
 
  if(!played){
     song = minim.loadFile("ambient.mp3");
     song.setVolume(0.5);
     song.play(); 
     song.loop();
     played = true; 
  }
  
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
  else if(Abstergo_b.update() == true){link("file:///C:/Users/KCAMPBE/Documents/College/OOP/Animus/animus/data/easteregg.html");}
  
}

  
  