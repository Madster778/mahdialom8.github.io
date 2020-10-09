class Ball
{
  PVector position;
  PVector velocity;
  float radius;
  color colour;
  float xPos;
  float yPos;
  
  Ball()
  {
    position  = PVector.random2D();
    velocity = new PVector(-position.x,-position.y);
    velocity.mult(5);
    position.mult(width);
    position.add(width/2, height/2);
    radius = 15;
    colour = color(50,150,250);
  }
  
  void draw()
  {
    noStroke();
    fill(colour);
    ellipse(position.x, position.y, radius*2,radius*2);
  }
  
  void move()
  {
    position.x = position.x + velocity.x;
    position.y = position.y + velocity.y;
    
    if (position.x-radius < 0 && velocity.x < 0)
    {
      velocity.x = -1*velocity.x;
    }
    else if (position.x+radius > width && velocity.x > 0)
    {
      velocity.x = -1*velocity.x;
    }
    if (position.y-radius < 0 && velocity.y < 0)
    {
      velocity.y = -1*velocity.y;
    }
    else if (position.y+radius > height && velocity.y > 0)
    {
      velocity.y = -1*velocity.y;
    }
  }
}
    
  
