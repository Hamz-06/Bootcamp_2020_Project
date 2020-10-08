
ArrayList <Shootingcircle> Circles;
Xplayer myPlayer;
EnterSphere startC;
Text text;

color myLimeGreen;
boolean InCircle=false;
float cenX;
float cenY;

int i;
float distance;
int fixedSizeCircle;


void setup()
{

  //Instantiate size n classes
  size (1000, 1000);
  cenY= height/2;
  cenX=width/2;

  myLimeGreen = color(#0BFF00);
  Circles = new ArrayList<Shootingcircle>();         //empty

  myPlayer = new Xplayer();
  startC = new EnterSphere();
  text = new Text();
  
  ///////////

  //create starting circle 

  for ( i = 0; i<30; i++)
  {
    Circles.add(new Shootingcircle());
  }
  fixedSizeCircle = Circles.size();



}

void draw()
{
  
  background(255);
  
  if (InCircle)
  {
    myPlayer.movePlayer(); 
    //println("in Circle");
  } else 
  {
    startC.NotInsideCircle();
  }

  


  for ( i = 0; i<Circles.size(); i++)    //spawn 30 circles 
  {

    if (i<(fixedSizeCircle/2)-1)
    {
      fill(255, 0, 0);
    } else 
    {

      fill(myLimeGreen);
      //everything else including my player
    }

    Shootingcircle c = Circles.get(i);
    c.spawn();




    //What array am i om
    //text(fixedSizeCircle, Circles.get(i).x -50, Circles.get(i).y);
    //text(i, Circles.get(i).x +30, Circles.get(i).y);
    /////////////////////////////////////////////////////////////



    ////////////////////////////////////////////////////////////////////
    distance = dist(mouseX, mouseY, Circles.get(i).x, Circles.get(i).y);
    if (distance<25 && InCircle)
    {
      //Circles.remove(i);
      if (i<(fixedSizeCircle/2)-1 )      //HIGHLIGING AND GAME ENDING PARTS
      {
        Circles.clear();            //L
        text.fail = true;
      } else 
      {
        Circles.remove(i);
      }
    }  // if statement close
    
    
  }//for loop close 

  //print(i);
  
  if (i==14)    // U WON 
  {
    Circles.clear();
    text.pass = true;
  }
  
  
  
  text.Decider();

  //text(i, Circles.get(i).x +30, Circles.get(i).y);
}
