class Spaceship extends Floater
{   
     public Spaceship(){
       myColor=209;
     myCenterX=myCenterY = 250;
     corners = 3;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = -8;
     yCorners[0] = -8;
     xCorners[1] = 16;
     yCorners[1] = 0;
     xCorners[2] = -8;
     yCorners[2] = 8;
   }
     public int Se = 2;
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
     public void trx(){
       myCenterX = myCenterX + Se;
     }
     public void trY(){
       myCenterY = myCenterY - Se;
     }
      
     public void Ntrx(){
       myCenterX = myCenterX - Se;
     }
     public void NtrY(){
       myCenterY = myCenterY + Se;
     }
     public void one(){
       if( Se < 6)
       Se = Se + 1;
       
     }
     public void two(){
       if( Se > 1)
       Se = Se - 1;}
       
       public void accelerate (double dAmount)   
  {          
    double dRadians =myPointDirection*(Math.PI/180);
    myDirectionX += ((dAmount) * Math.cos(dRadians));    
    myDirectionY += ((dAmount) * Math.sin(dRadians));    
    if(myDirectionX > 3+(B-10)/8)
    myDirectionX = 3+(B-10)/8;
    if(myDirectionY >  3+(B-10)/8)
    myDirectionY =  3+(B-10)/8;
    if(myDirectionX < - 3-(B-10)/8)
    myDirectionX = - 3-(B-10)/8;
    if(myDirectionY < - 2-(B-10)/8)
    myDirectionY =  -3-(B-10)/8;
    }

  public void halt()
  {
    if(myDirectionX < 60 && myDirectionX > 0){
    myDirectionX = myDirectionX - 0.03-+ (B-5)/100;
  }
      if(myDirectionY < 60 && myDirectionY > 0){
    myDirectionY = myDirectionY - 0.03- (B-5)/100;
  }
      if(myDirectionY > -60 && myDirectionY < 0){
    myDirectionY = myDirectionY + 0.03+ (B-5)/100;
  }
        if(myDirectionX > -60 && myDirectionX < 0){
    myDirectionX = myDirectionX + 0.03 + (B-5)/100;
  }
  } 
}
