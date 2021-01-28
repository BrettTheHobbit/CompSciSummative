/* ICS4U1 - Brett Hobbs, Shanif Syed, Nehal Pamma, JC Abanto
The idea of this educational game is to teach younger children about logic by gameifying it.
The game is split up into two different states, the logic and the action. The logic screen is where you can move around "Logic Blocks" which changes what happens on the "Action Screen"
You can keep moving around "Logic Blocks" until you are satisfied with the outcome and you think you can reach the end, then you press the start button and your logic affects what happens to the action screen.
*/

import ddf.minim.*;

Minim minim;
AudioPlayer mainTheme;
AudioPlayer levelMusic;

int level = 4;
int xPos, yPos = 10;
int jonesX, jonesY;
static final int FADE = 2500;

PImage LevelOne;
PImage LevelFour;
PImage IndianaJones;
PImage GameOver;

Block blockOne = new Block(xPos, yPos);

void setup() {
  
  IndianaJones = loadImage("IndianaJones.png");
  LevelOne = loadImage("Level1.png");
  LevelFour = loadImage("Level4.png");
  GameOver = loadImage("GameOver.png");
 
  minim = new Minim(this);
  mainTheme = minim.loadFile("mainTrack.mp3");
  levelMusic = minim.loadFile("levelSong.mp3");

}

public void settings() {
  fullScreen();
}

void draw() {
  
  background(33);
  
  if (level == 0) {
    drawMenuScreen();
  } else if (level == 1) {
    drawLevelOne(1065, 843);
  } else if (level == 2) {
    drawLevelTwo();
  } else if (level == 3) {
    drawLevelThree();
  } else if (level == 4) {
    drawLevelFour(1550, 820);
  } else if (level == 5) {
    drawLevelFive();
  } else if (level == 6) {
    drawGameOver();
  }
}
 
      
void drawMenuScreen() {
  
  rectMode(CENTER);
  fill(#000000);
  rect(450,300,800,500);
  fill(255,255,255);
  createFont("Imprint MT Shadow", 32);
  textAlign(CENTER, CENTER);
  textSize(60);
  text("THIS IS A PLACEHOLDER", 450,150);
  playMenuMusic();
  
  if (mousePressed) {
    level++;
  }
}


void drawLevelOne(int jonesX, int jonesY) {
 
  image(LevelOne, 800, 45);
  image(IndianaJones, jonesX, jonesY);
  blockOne.drawBlock();
  playLevelMusic();
}

void drawLevelTwo() {
}

void drawLevelThree() {
}

void drawLevelFour(int jonesX, int jonesY) {
  
  image(LevelFour, 800, 45);
  image(IndianaJones, jonesX, jonesY);
  blockOne.drawBlock();
  playLevelMusic();
}

void drawLevelFive() {
}

void drawGameOver() {
  
  GameOver.resize(width, height);
  image(GameOver, 0, 0);
  
   if (mousePressed && mouseX > (width/4)+25 && mouseX < 3*(width/4)-45 && mouseY > 3*(height/5)+90 && mouseY < 4*(height/5)+75) {
     level = 0;
   }
}

void mouseClicked() {
  blockOne.updateText();
}

void playMenuMusic() {
  
  mainTheme.play();
}

void playLevelMusic() {
  
  mainTheme.pause();
  levelMusic.play();
}




  
