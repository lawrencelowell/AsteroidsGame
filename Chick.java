class Chick implements Animal {     
  private String myType;     
  private String mySound;  
  private String my2Sound;
  public Chick(String type, String sound, String secondsound) {         
    myType = type;         
    mySound = sound;
    my2Sound = secondsound;
  }     
  public Chick() {         
    myType = "Bananannananananananana";         
    mySound = "cluck'd";
    my2Sound = "heh";
  }      
  public String getSound() {
    if((int)(Math.random()*2) == 1)
    return mySound;
    else
    return my2Sound;
  }     
  public String getType() {
    return myType;
  }
}
