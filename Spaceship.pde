class Spaceship extends Floater
{   
     public Spaceship(){
     myCenterX=myCenterY = 250;
     corners = 5;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = 0;
     yCorners[0] = 0;
     xCorners[1] = 5;
     yCorners[1] = 5;
     xCorners[2] = 10/2;
     yCorners[2] = 15;
     xCorners[3] = 0/2;
     yCorners[3] = 40/2;
     xCorners[4] = 60/2;
     yCorners[4] = 20/2;
   }
     
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
     
     public void hyperSpace() {  
     myCenterX= (int)(Math.random()*(460)+1)+20;
     myCenterY = (int)(Math.random()*(460)+1)+20;
     myDirectionX = myDirectionY = 0;
     for (int i=0; i < S.length; i++)
     S[i].reset();
     }

     
}
