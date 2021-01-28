void setup(){
size(900,600);
background(100,80,70);

}

void draw(){

drawTitle();
}

void drawTitle(){
rectMode(CENTER);
fill(#000000);
rect(450,300,800,500);
fill(255,255,255);
createFont("Imprint MT Shadow", 32);
textAlign(CENTER, CENTER);
textSize(60);
text("THIS IS A PLACEHOLDER", 450,150);
}
