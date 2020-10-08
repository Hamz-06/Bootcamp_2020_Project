class timer 
{
}



class Text
{
  boolean fail=false;
  boolean pass=false;
  boolean timer=true;
  int  seconds;
  int milli;
  float remainder;
  void Decider()
  {
    if (InCircle&&timer)
    { 
      milli = millis();
      remainder  = millis()%1000;
      seconds = (millis() / 1000);
      //text(seconds , 300, 300);
      //text(seconds + ":" + milli, 50, 50);
    }
    if (fail)

    {
      timer=false;
      
      fill(255,0,0);
      textSize(20);
      textAlign(CENTER);
      text("YOU LOST, YOUR TIME WAS" +", "+ seconds + " : " + remainder+" SECONDS ", cenX, cenY);
    }
    if (pass)
    {
      timer=false;
      
      fill(0,0,255);
      textSize(20);
      textAlign(CENTER);
      text("YOU WON, YOUR TIME WAS" +", "+ seconds + " : " + remainder+" SECONDS ", cenX, cenY);
    }

    //text("YOU LOST", cenX, cenY);
  }
}
