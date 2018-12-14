class Hard_Asteroid extends Asteroid
{
  private double Rspeed;
  private double Rd = 1;
  private int size;
  private double spd = 1;
  private int side = 1;
   public void Hard_Asteroid(){
 Rspeed = Math.random()*0.3*(B-10)-0.15*(B-10);
     Rd = 2*Math.random()-1;
     size = (int)(Math.random()*3+2);
     spd = 1.3*Math.random()+0.3;
     corners = 6;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = -12;
     yCorners[0] = -12;
     xCorners[1] = 24;
     yCorners[1] = 0;
     xCorners[2] = -12;
     yCorners[2] = 12;
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
     myColor = 80;
}
public void show(){
  super.show();
  fill(255,0,0);
  ellipse((float)myCenterX,(float)myCenterY,5,5);
}
public void shotd(){
}}
 
