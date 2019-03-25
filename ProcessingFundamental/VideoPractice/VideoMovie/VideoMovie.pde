import processing.video.*;
Movie Kimono;

//Boolean MoviePlay = false;

void setup(){
  size(1920,456);
 
  //printArray(Capture.list());
  //Check capture resolution and fps option on console
  
  Kimono = new Movie(this,"Kimono.mp4");
  Kimono.loop();
  
}

void movieEvent(Movie Kimono){
  Kimono.read();
  /*For begin, draw class draw 60fps, but web cam is 30fps.
  because of that,weird things going on. So we set the timing processing read 
  and draw, only receive signal from the camera.*/
}

void draw(){
  
  //Altanative way to set the timing
  //if(video.available()){
  //  video.read();
  //}
  
  //-- play event control --
  //if(keyPressed){
  //  MoviePlay = !MoviePlay;
  //}
  
  //if(MoviePlay){
  //  Kimono.play();//Start movie file at this point
  //}else{
  //  Kimono.stop();
  //}
  
  //-- Spped control --
  float r = map(mouseX,0,width,1,2);
  Kimono.speed(r);
  image(Kimono,0,0);

}
