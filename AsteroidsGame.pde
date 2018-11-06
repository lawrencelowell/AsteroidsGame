Spaceship L;
Star[] S;
int timer = 0;
public void setup() 
{
  size(500, 500);
  L = new Spaceship();
  S = new Star[150];
  for (int i=0; i < S.length; i++)
  S[i] = new Star();
}
public void draw() 
{
  background(20);
  L.show();
  timer();
  for (int i=0; i < S.length; i++)
  S[i].show();
  L.move();
}
public void keyPressed() {
  if (key == 'd') {
    if (timer == 0) {
      L.hyperSpace();
      timer = 1;
    }
  }
  if (key == 'q') {
    L.accelerate(0.12);
  }
  if (key == 'w'){
    L.accelerate(-0.03);
  }
  if (key == 'e'){
    L.turn(15);
  }
  if (key == 'r'){
    L.turn(-15);
  }
  
}
public void timer(){
    if (timer > 0 && timer < 30)
  {
    timer = timer + 1;
  }
  if (timer == 30)
    timer = 0;
}
 
