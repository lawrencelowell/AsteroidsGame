class Star //note that this class does NOT extend Floater
{
  private float x,y,colora,colorb,colorc,size,opacity,change,iS;
  private float counter,sp;
  public Star(){
    x = (float)Math.random()*900;
    y = (float)Math.random()*600;
    opacity = (float)Math.random()*255;
    iS = size = (float)Math.random()*2+1;
    colora = (int)(Math.random()*150)+100;
    colorb = (int)(Math.random()*150)+100;
    colorc = (int)(Math.random()*150)+100;
    counter = 0;
    sp = (float)Math.random()+0.5;
    change = (float)Math.random()*4+0.2;
  }
  public void show(){
    if (counter >= 0 && counter < 100){
    opacity = opacity + change;
    counter = counter + sp*2.5;
    size = size + 0.05;
    }
     if (counter >= 100 && counter < 200){
    opacity = opacity - change;
    counter = counter + sp*2.5;
    size = size - 0.05;
    }
    if (counter > 200){
    counter = 0;
    size = iS;
    }
    fill(colora,colorb,colorc,opacity);
    noStroke();
    ellipse(x,y,size,size);
  }
  public void reset(){
    x = (float)Math.random()*900;
    y = (float)Math.random()*600;
    opacity = (float)Math.random()*255;
    size = (float)Math.random()*2.2+1;
    colora = (int)(Math.random()*150)+100;
    colorb = (int)(Math.random()*150)+100;
    colorc = (int)(Math.random()*150)+100;
    counter = 0;
    sp = (float)Math.random()+0.5;
    change = (float)Math.random()*4+0.2;
  }
}
