class ImageButtons extends Button 

{

  PImage base;

  PImage roll;

  PImage down;

  PImage currentimage;



  ImageButtons(int ix, int iy, int iw, int ih, PImage ibase) 

  {

    x = ix;

    y = iy;

    w = iw;

    h = ih;

    base = ibase;

    currentimage = base;

  }

  

  void update() 

  {

    over();

    pressed();

    if(pressed) {

      link("https://dropbox.com");

    } else if (over){

      currentimage = base;

    } else {

      currentimage = base;

    }

  }

  

  void over() 

  {

    if( overRect(x, y, w, h) ) {

      over = true;

    } else {

      over = false;

    }

  }

  

  void display() 

  {
    image(currentimage, x, y);
  }

}