import peasy.*;
import processing.video.*;

Capture video;
PeasyCam cam;

void setup() {
  size(600,600,P3D);
  
  cam = new PeasyCam(this, 100);
  cam.setMinimumDistance(5);
  cam.setMaximumDistance(1000);
  
  frameRate(30);
  video = new Capture(this, width, height, 40); 
  
  String[] devices = Capture.list(); 
  println(devices); video.start();
}
