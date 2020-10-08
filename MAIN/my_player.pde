class Xplayer
{

  int xPos;
  int yPos;



  void movePlayer()
  {


    xPos = mouseX;
    yPos = mouseY;
    rectMode(CENTER);
    rect(xPos, yPos, 10, 60);
    rect(xPos, yPos, 60, 10);


  }
}
