class ImageButtons extends Button 

{

  PImage base;

  PImage roll;

  PImage down;

  PImage currentimage;
  
   



  ImageButtons(float ix, float iy, float iw, float ih, PImage ibase) 

  {

    x = ix;

    y = iy;

    w = iw;

    h = ih;

    base = ibase;

    currentimage = base;

  }

  

  boolean update() 

  {
    
    boolean ispressed = false;

    over();

    pressed();

    if(pressed) {

    ispressed = true;
    
    } else {

      ispressed = false;
      currentimage = base;

    }
    
    return ispressed;

  }

  

  void over() 

  {

    if(overRect(x, y, w, h) ) {

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