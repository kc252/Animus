class Button

{

  float x, y;

  float w, h;

  color basecolor, highlightcolor;

  color currentcolor;

  boolean over = false;

  boolean pressed = false;   

  

  void pressed() {

    if(over && mousePressed) {
      
      pressed = true;

    } else {

      pressed = false;

    }    

  }

  

  boolean overRect(float x, float y, float width, float height) {

  if (mouseX >= x && mouseX <= x+width && 

      mouseY >= y && mouseY <= y+height) {

    return true;

  } else {

    return false;

  }

}

}