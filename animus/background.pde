class background{
  
 void render(Particle[] p){
   
  for(int i = 0; i < p.length; i++)
  {
    p[i] = new Particle(random(width), random(height), 5);
    p[i].vx = random(-3, 3);
    p[i].vy = random(-3, 3);
  } 
 }
 
 void update(Particle[] p){
   
   for(int i = 0; i < p.length; i++)
  {
    p[i].x += p[i].vx;
    p[i].y += p[i].vy;
    
    if(p[i].x < 0)
    {
      p[i].x = width;
    }
    else if(p[i].x > width)
    {
      p[i].x = 0;
    }
    
    if(p[i].y < 0)
    {
      p[i].y = height;
    }
    else if(p[i].y > height)
    {
      p[i].y = 0;
    }
    
    for(int j = i + 1; j < p.length; j++)
    {
       p[i].springTo(p[i], p[j]);     
    }
    p[i].display();
    
  }
 }
 
}