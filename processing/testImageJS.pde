/**
 * Alpha Mask. 
 * 
 * Loads a "mask" for an image to specify the transparency 
 * in different parts of the image. The two images are blended
 * together using the mask() method of PImage. 
 */

// The next line is needed if running in JavaScript Mode with Processing.js
/* @pjs preload="moonwalk.jpg";  */

 PImage img;
 PImage imgMask;
 int[] maskArray;
 JavaScript javascript;

 interface JavaScript {
  void updateFlow(int[] test);
}



void bindJavascript(JavaScript js) {
  javascript = js;
}

int[] getMask(){ return maskArray};

void setup() {
  size(640, 360);
  img = loadImage("moonwalk.jpg");
  maskArray = new int[img.width*img.height];
  println(img.width);
  println(img.height);
  for( int i=0; i<img.width; i++){
    for(int j=0; j<img.height; j++){
      maskArray[i +j*img.width] = (int)random(100,255);
    }
  }

  img.mask(maskArray);
  imageMode(CENTER);
  
}

void draw() {
  background(0, 102, 153);
  image(img, 0 , 0);
}
void setMask(int[] update) { 
    
    for(n in update){
    //   for(int i =0; i<update[n][i].length; i++){  
    // println(update.zones[i].x); 
    // println(update.zones[i].y);
    // println(update.zones[i].u);
    // println(update.zones[i].v);

    //   }
      
      for(zones in n){
      println(zones);   
      }
    }
    // maskArray  = update
    // img.mask(maskArray);
}

void applyMaskToImg(PImage img){img.mask(imgMask);}
// class Mask {
//     int[] maskArray;
//     Mask(int[] _maskArray) { this.maskArray=_maskArray; }
//     void setMask(update) { this.maskArray  = update}
//     void applyMaskToImg(PImage img){img.mask(this.maskArray);}

// }


void mousePressed(){


// for( int i=0; i<img.width; i++){
//     for(int j=0; j<img.height; j++){

//       maskArray[i +j*img.width] = (int)random(100,255);
//     }
//     img.mask(maskArray);
//   }
}