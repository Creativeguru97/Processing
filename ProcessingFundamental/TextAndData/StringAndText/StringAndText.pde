
//void setup(){
  size(600, 400);
  background(0);
  println(PFont.list());
//}

//void draw(){
  String s = "To be or not to be";
  
  //println(s);
  
  PFont f = createFont("Georgia", 64);
  //textSize(64);
  textFont(f);
  fill(255);
  text(s, 20, 60);
  //text(s.charAt(0), 20, 120);
  
  float x = 20;
  for(int i = 0; i < s.length(); i++){
    char c = s.charAt(i);
    textSize(random(36, 96));
    fill(random(255));
    text(c, x, 200);
    x += textWidth(c);
  }
//}

//Manipulating strings
/*
CharAt(): Returns the character at the specified index
equals(): Compares a string to a specified object
length(): Returns the number of characters in the input string
indexOf(): Returns the index value of the first occurrence of a substring within the input string
substring(): Returns a new string that is part of the input string
toLowerCase(): Converts all the characters to lower case
toUpperCase(): Converts all the characters to Upper case
*/
