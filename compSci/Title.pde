import processing.sound.*;
SoundFile file;

void setup(){
size(900,600);
background(100,80,70);

}

void draw(){

drawTitle();
//getTrack();
}

void drawTitle(){
PImage img = loadImage("mainScreenPlat.png");
PImage img2 = loadImage("IndianaJones.png");
PImage img3 = loadImage("cave-background.png");

rectMode(CENTER);
fill(#000000);
rect(width/2 , height/2 , width/1/125 ,height/1.2);
fill(255,255,255);
imageMode(CENTER);
image(img3, width/2, height/2, width/1.125, height/1.2);

createFont("Imprint MT Shadow", 32);
textAlign(CENTER, CENTER);
textSize(width/20);
fill(155);
text("THIS IS A PLACEHOLDER", width/2,150);
textSize(width/50);
text("Press Anywhere to continue", width/2, height/2.4);


image(img, width/2, height/1.34);
image(img2, width/2, height/1.76470);
}

void mousePressed(){
  if(mouseX <= width/1.125 && mouseY <=height/1.2){
  System.out.println("SWITCHED TO GAME SCREEN");
  }


}

void getTrack(){

file = new SoundFile(this, "mainTrack.mp3");
file.loop();


}
