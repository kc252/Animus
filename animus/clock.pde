int cx, cy;
float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;

class clock{
  
  void render(){
    
  int radius = min(width, height) / 2;
  secondsRadius = radius * 0.22;
  minutesRadius = radius * 0.20;
  hoursRadius = radius * 0.01;
  clockDiameter = radius * .47;
  
  cx = width / 2;
  cy = height / 2;
    
  }
  
  void update(){
   // Draw the clock background
  fill(255);
  noStroke();
  ellipse(cx, cy, clockDiameter, clockDiameter);
  
  // Angles for sin() and cos() start at 3 o'clock;
  // subtract HALF_PI to make them start at the top
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
  
  // Draw the hands of the clock
  stroke(0);
  strokeWeight(1);
  line(cx, cy, cx + cos(s) * secondsRadius, cy+ sin(s) * secondsRadius);
  strokeWeight(2);
  line(cx, cy, cx + cos(m) * minutesRadius/1.25, cy + sin(m) * minutesRadius/1.25);
  strokeWeight(3);
  line(cx, cy, cx + cos(h) * hoursRadius*7.5, cy + sin(h) * hoursRadius*7.5);
  
  // Draw the minute ticks
  strokeWeight(2);
  beginShape(POINTS);
  for (int a = 0; a < 360; a+=6) {
    float angle = radians(a);
    float x = cx + cos(angle) * secondsRadius;
    float y = cy + sin(angle) * secondsRadius;
    vertex(x, y);
  }
  endShape(); 
  }
}