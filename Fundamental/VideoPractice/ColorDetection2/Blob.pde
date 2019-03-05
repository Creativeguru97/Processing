class Blob{
  float minX, minY, maxX, maxY;
  
  Blob(float x, float y){
    minX = x;
    minY = y;
    maxX = x;
    maxY = y;
  }
  
  void show(){
    stroke(0);
    fill(255);
    strokeWeight(2);
    rectMode(CORNERS);
    rect(minX, minY, maxX, maxY);
  }
  
  void add(float x, float y){
    //min function : whichever one of these is less, use that
    minX = min(minX, x);
    minY = min(minY, y);
    maxX = max(maxX, x);
    maxY = max(maxY, y);
    
  }
  
  float size(){
    //Find the blob's area size
    return (maxX-minX)*(maxY-minY);
  }
  
  
  
  boolean isNear(float x, float y){
    float centerX = (minX + maxX)/2;
    float centerY = (minY + maxY)/2;
    
    float d = distSq(centerX, centerY, x, y);
    if(d < distThreshold*distThreshold){
      return true;
    }else{
      return false;
    }
  }
}
