Spaceship L;
Star[] S;
ArrayList <Bullets> P;
double B = 10.0;
ArrayList <Asteroid> Sad;
int NSad = 1;
int timer = 0;
int hyperspace =3;
int game = 0;
int lose = 3;
int diff = 0;
int Hard = 0;
int Score = 0;
int stic = 0;
int U = 0;
int AS = 0;
float BC = 4;
int BT = 0;
boolean Wpress = false;
boolean Apress = false;
boolean Dpress = false;
boolean Rpress = false;
public void setup() 
{
  size(900, 600);
  L = new Spaceship();
  S = new Star[75+(int)(100*Math.random())];
  Sad = new ArrayList <Asteroid>();
  P = new ArrayList <Bullets>();
  for (int i=0; i < S.length; i++)
    S[i] = new Star();
  for (int i=0; i < B; i++)
    Sad.add(new Asteroid());
  smooth(1000);
}
public void draw() 
{
  if (lose > 0) {
  
    background(20);
    textSize(20);
    fill(255);
     if (BC > 4)
     text("∆∆∆∆∆",788,80);
     if (BC <= 4 && BC > 3)
     text("∆∆∆∆",800,80);
     if (BC <= 3 && BC > 2)
     text("∆∆∆",812,80);
     if (BC <= 2 && BC > 1)
     text("∆∆",824,80);
      if (BC <= 1 && BC > 0)
     text("∆",836,80);
      text("❤", 20, 80);
    if (lose == 1)
      text("❤", 20, 80);
    if (lose == 2)
      text("❤❤", 20, 80);
    if (lose == 3)
      text("❤❤❤", 20, 80);
    textSize(15);
    if (B < 20)
      text("Difficulty " + (int)(B-9), 20, 110);
    if (B == 20)
      text("Difficulty " + "Special", 20, 110);
    text("Zoom " + hyperspace, 20, 140);
    if(Apress == true){L.turn(-(int)B/5-1);}
    if(Dpress == true){L.turn((int)B/5+1);}
    if(Wpress == true){L.accelerate(0.025+B/1500);}
    textSize(10);
    text("Score " + Score, 10, 580);
    for (int i=0; i < S.length; i++)
    {
     S[i].show();
    }

    L.show();
    timerd();
    L.move();
    for (int i=0; i < AS; i++){
    P.get(i).show();
    P.get(i).move(); 
    }
    
    for (int i=0; i < B; i++) {
      Sad.get(i).show();
      Sad.get(i).accelerate(-0.01-B/2000);
      Sad.get(i).move();
    }
    
    
    stick();
    gameOver();
    AstDeath();
    inc();
    BTD();
  }
  if (lose == 0) {
    background(255);
    fill(0, 0, 0);
    textSize(35);
    text("Gameover :(", 330, 280);
    text("Your Score is " + Score, 310, 350);
  }
}
public void keyPressed() {
  if (key == 'h') {
    if (timer == 0 && hyperspace > 0) {
      L.hyperSpace();
      hyperspace = hyperspace - 1;
      timer = 1;
    }
  }
  if (key == 'w') {
    Wpress = true;
  
  }

  if (key == 'd') {
 Dpress= true;
  }
  if (key == 'a') {
   Apress = true;
  }
  if (key == 'r') {
    L.halt();
  }
}

public void keyReleased(){
  if (key == 'w') {
    Wpress = false;
  }
  if (key == 'd') {
    Dpress = false;
  }
  if (key == 'a') {
    Apress= false;
  }
}
  
public void mousePressed(){
    if(BT == 0 && BC > 0){
    P.add(new Bullets());
    AS = AS + 1;
    BT = 1;
    BC = BC - 0.5;
}}

public void timerd() {
  if (timer > 0 && timer < 180)
  {
    timer = timer + 1;
  }
  if (timer == 180)
    timer = 0;
}
public void BTD() {
  if (BT > 0 && BT < (int)(200/B))
  {
    BT = BT + 1;
  }
  if (BT == (int)(200/B))
    BT = 0;
}
public void stick() {
  if (stic >= 0 && stic < (int)(8000/(B*B)))
  {
    stic = stic + 1;
  }
  if (stic == (int)(8000/(B*B))) {
    stic = 0;
    Score = Score + 5;
    if(BC < 4)
    BC = BC + 0.5;
   
  }
}

public void inc() {
  if (diff >= 0 && diff < 480)
  {
    diff = diff + 1;
  }
  if (diff == 480 && Score > 50*(B-9)*(B-8)+400) {
    diff = 0;
    if (B < 20) {
      B = B + 1;
      Sad.add(new Asteroid());
    }
    if (B == 20);
    Hard = 1;
  }
}
public void gameOver() {
  for (int i=0; i < B; i++) {
    if (dist(Sad.get(i).getX(), Sad.get(i).getY(), L.getX(), L.getY())<6*Sad.get(i).size) {
      background(220, 0, 0);
      Sad.remove(i);
      Sad.add(new Asteroid());
      lose = lose - 1;
    }
    if (Sad.get(i).myCenterX >width)
    { 
      if (Math.random()>B/30) {
        Sad.remove(i);
        Sad.add(new Asteroid());
      }
else{U=U + 1;}
    }
    if (Sad.get(i).myCenterX<0)
    {     
      if (Math.random()>B/30) {
        Sad.remove(i);
        Sad.add(new Asteroid());
      }
else{U=U + 1;}
    }
    
    if (Sad.get(i).myCenterY >height)
    {    
      if (Math.random()>B/30) {
        Sad.remove(i);
        Sad.add(new Asteroid());
      }
      else{B=B;}
    }
 if (Sad.get(i).myCenterY < 0){
      if (Math.random()>B/10){
        Sad.remove(i);
        Sad.add(new Asteroid());
      }
else{U=U + 1;}
    }
  }
  }

public void AstDeath() {
  for (int i=0; i < B; i++) {
    if (Sad.get(i).size==0) {
      Sad.remove(i);
      Sad.add(new Asteroid());
    }
    for (int x=0; x < AS; x++) {

    if (dist(P.get(x).getX(), P.get(x).getY(), Sad.get(i).getX(),Sad.get(i).getY())<6*Sad.get(i).size) {
      Sad.remove(i);
      Sad.add(new Asteroid());
      AS = AS -1;
      P.remove(x);
      Score=Score + 100/Sad.get(i).size;
      if(Math.random()<0.001*Sad.get(i).size*B){
        hyperspace = hyperspace + 1;
      }
}
    }
  }
  for (int x=0; x < AS; x++) {
  P.get(x).life = P.get(x).life - 1;
  if(P.get(x).life == 0){
    AS = AS -1;
    P.remove(x);
  }
  }
}
