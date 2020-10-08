class EnterSphere
{
  void NotInsideCircle()
  {

    
    textSize(20);
    textAlign(CENTER);
    text("Enter The Circle To Start The game", 500, 500);    //text
    fill(46, 67, 3, 80);
    ellipse(width/2, height/2, 500, 500);   //starting circle
    float distCirc = dist(mouseX, mouseY, cenX, cenY);
    if (distCirc<250)
    {
      InCircle = true;
    }
  }
}
