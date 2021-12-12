void draw() 
{
   noFill();
   lights();
   strokeWeight(5);
  
  background(#FF5F03);
  pushMatrix(); 

 if (video.available()) 
 {
    video.read();
    video.loadPixels();
    
    image(video,0,0);
  }
  
  translate(-width/2, -height/2, 0);

 
     for (int y = 0; y < video.height; y+=4)
     {
    
       beginShape();
     for (int x = 0; x < video.width; x++) 
     {
    
       int pixelValue = video.pixels[x+(y*video.width)];
    
        stroke(0,brightness(pixelValue),64,390);
        vertex (x, y, (brightness(pixelValue)/0.9)-100);
  
      }
      endShape();
    }
  popMatrix();
}
