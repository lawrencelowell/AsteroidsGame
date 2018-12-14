class Asteroid extends Floater
{
  private double Rspeed;
  private double Rd = 1;
  private int size;
  private double spd = 1.0;
  private int side = 1;
     public Asteroid(){
       Rspeed = Math.random()*0.3*(B-10)-0.15*(B-10);
     Rd = 2*Math.random()-1;
     size = (int)(Math.random()*3+2);
     spd = 1.3*Math.random()+0.3;
     corners = 6;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = (int)(-4)*size;
     yCorners[0] = (int)(7)*size;
     xCorners[1] = (int)(4)*size;
     yCorners[1] = (int)(7)*size;
     xCorners[2] = (int)(8)*size;
     yCorners[2] = (int)(0)*size;
     xCorners[3] = (int)(4)*size;
     yCorners[3] = (int)(-7)*size;
     xCorners[4] = (int)(-4)*size;
     yCorners[4] = (int)(-7)*size;
     xCorners[5]= (int)(-8)*size;
     yCorners[5]=0;
     side = (int)(Math.random()*4+1);
     if(side == 1){
     myCenterX = 900*Math.random();
     myCenterY = 50*Math.random()+50;
     myPointDirection = 240+Math.random()*60;
     }
     if(side == 2){
     myCenterX= 900*Math.random();
     myCenterY= 550+50*Math.random();
     myPointDirection = 60+Math.random()*60;
     }
     if(side == 3){
     myCenterX= 50*Math.random();
     myCenterY= 600*Math.random();
     myPointDirection = 150+Math.random()*60;
     }
     if(side == 4){
     myCenterX= 850+50*Math.random();
     myCenterY= 600*Math.random();
     myPointDirection = -30+Math.random()*60;
     }
     myColor = 90-10*size;
     
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
    
     
       public void turn (int nDegreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection= myPointDirection+Rd*nDegreesOfRotation;   
}
       public void accelerate (double dAmount)   
  {          
    double dRadians =myPointDirection*(Math.PI/180);
    myDirectionX += ((dAmount) * Math.cos(dRadians));   
    myDirectionY += ((dAmount) * Math.sin(dRadians)); 
    if(myDirectionX > 2.0/size*B*B/(120-B)+1)
    myDirectionX = 2.0/size*B*B/(120-B)+1;
    if(myDirectionY > 2.0/size*B*B/(120-B)+1)
    myDirectionY = 2.0/size*B*B/(120-B)+1;
    if(myDirectionX < -2.0/size*B*B/(120-B)-1)
    myDirectionX = -2.0/size*B*B/(120-B)-1;
    if(myDirectionY < -2.0/size*B*B/(120-B)-1)
    myDirectionY = -2.0/size*B*B/(120-B)-1;
}
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += spd*myDirectionX;    
    myCenterY += spd*myDirectionY;
    turn((int)Rspeed);

  }   

    
    
}
