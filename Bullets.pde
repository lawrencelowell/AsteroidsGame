class Bullets extends Floater
{
  public int life;
  protected double dRadians;
     public void setX(int x){myCenterX = x;}  
     public int getX(){return (int)myCenterX;}   
     public void setY(int y){myCenterY = y;}   
     public int getY(){return (int)myCenterY;}   
     public void setDirectionX(double x){myDirectionX = x;}   
     public double getDirectionX(){return myDirectionX;}   
     public void setDirectionY(double y){myDirectionY = y;}   
     public double getDirectionY(){return myDirectionY;}   
     public void setPointDirection(int degrees){myPointDirection = degrees;}   
     public double getPointDirection(){return myPointDirection;}
     public Bullets()
     {
       life = 6*(int)B;
       myCenterX = L.myCenterX;
       myCenterY = L.myCenterY;
      dRadians =L.myPointDirection*(Math.PI/180);
       myDirectionX = L.myDirectionX + (6+B/10) * Math.cos(dRadians);
       myDirectionY = L.myDirectionY + (6+B/10) * Math.sin(dRadians);
     }
     public void show()
     {
       fill(255,0,0);
        ellipse((float)myCenterX,(float)myCenterY,6.0,6);
     }
       public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;
  }
}
