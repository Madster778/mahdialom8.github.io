int i;
float xPos;
float yPos;
float radius;
float specialradius;

Ball[] balls;
 
void setup()
{
  size(1000, 800);
  
  xPos = width - specialradius;
  yPos = height - specialradius;
  specialradius = 20;
  
  balls = new Ball[30];
  for (int i=0; i<balls.length; i = i+1)
  {
    balls[i] = new Ball();
  }
}

void draw()
{
  background(#9439E0);
  
  fill(#23FA2C);
  ellipse(mouseX,mouseY, specialradius,specialradius);
  
    for (int i=0; i<balls.length; i = i + 1)
    {
      balls[i].draw();
      balls[i].move();
      
      if (dist(xPos,yPos,balls[i].position.x,balls[i].position.y) < specialradius + radius) 
      {
        fill(0);
        textAlign(CENTER, CENTER);
        text("GAME OVER!", width/2, height/2);
        frameRate(0);
      }
    }
}
