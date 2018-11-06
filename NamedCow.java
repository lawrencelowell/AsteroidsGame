class NamedCow extends Cow
{
 private String myName;
 public NamedCow(){
   myName = "lol";
 }
 public NamedCow(String type, String name,String sound){
   myName = name;
   mySound = sound;
   myType = type;
 }
  public String getname(){return myName;}  
}
