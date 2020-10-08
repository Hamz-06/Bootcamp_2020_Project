
class Shootingcircle
{
  float x = width/2;
  float y =height/2;
  float xVel =1;
  float yVel =1 ; 
  float diameter = 50;
  


  /*
  void setup()
   {
   xVel = random(1, 3);
   yVel= random(1, 3);
   }*/

 

  {
    xVel = random(-3, 3);
    yVel= random(-3, 3);
    
    
  }

  void spawn()
  {




    //float ranRot=random(360);

    x =x+xVel;
    y =y+yVel;
    println();

    ellipse(x, y, diameter, diameter);

    //text(i,x,y);


    if (x<0 +(diameter/2) || x>width-(diameter/2))
    {
      xVel = -xVel;
    }
    if (y<0 + (diameter/2) || y>height-(diameter/2))
    {
      yVel = - yVel;
    }


    //text()
  }

  void colChange()
  {
    
    fill(0,255,255);
  }
  
  void makeNoise()
  {
  
  
  }
}
