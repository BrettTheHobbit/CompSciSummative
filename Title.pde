import processing.sound.*;
SoundFile file;

void setup(){
size(900,600);
background(100,80,70);

}

void draw(){

drawTitle();
getTrack();
}

void drawTitle(){
PImage img = loadImage("pixil-frame-0.png");
PImage img2 = loadImage("IndianaJones.png");
PImage img3 = loadImage("cave-background.png");

rectMode(CENTER);
fill(#000000);
rect(450,300,800,500);
fill(255,255,255);
imageMode(CENTER);
image(img3,450,300, 800,500);

createFont("Imprint MT Shadow", 32);
textAlign(CENTER, CENTER);
textSize(60);
fill(155);
text("THIS IS A PLACEHOLDER", 450,150);
textSize(25);
text("Press Anywhere to continue", 450, 250);
image(img, 625,450);
image(img2, 450, 340);
}

void mousePressed(){
  if(mouseX <= 800 && mouseY <=500){
  System.out.println("SWITCHED TO GAME SCREEN");
  }


}

void getTrack(){

file = new SoundFile(this, "mainTrack.mp3");
file.loop();


}
