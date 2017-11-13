class Particle
{
    float x;
    float y;
    float vx;
    float vy;
    float r;
    color c = color(0);
    
    Particle(float _x, float _y, float _r)
    {
        x = _x;
        y = _y;
        r = _r;    
    }
    
    void display()
    {
        fill(c);
        noStroke();
        ellipse(x, y, r, r);
    }
    
    void move()
    {
      x += vx;
      y += vy;
    }
    
    
    void springTo(Particle p1, Particle p2)
    {
      float dx = p2.x - p1.x;
      float dy = p2.y - p1.y;
      float dist = sqrt(dx * dx + dy * dy);
  
      if(dist < 100)
      
        {
          float ax = dx * spring;
          float ay = dy * spring;
          float alpha = 10 + (dist/100) * 200;   
    
          p1.vx += ax;
          p1.vy += ay;
          p2.vx -= ax;
          p2.vy -= ay;
    
          stroke(alpha);
          line(p1.x, p1.y, p2.x, p2.y);
         }
    }
}