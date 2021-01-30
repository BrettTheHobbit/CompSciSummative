/* ICS4U1 - Brett Hobbs, Shanif Syed, Nehal Pamma, JC Abanto
The idea of this educational game is to teach younger children about logic by gameifying it.
The game is split up into two different states, the logic and the action. The logic screen is where you can move around "Logic Blocks" which changes what happens on the "Action Screen"
You can keep moving around "Logic Blocks" until you are satisfied with the outcome and you think you can reach the end, then you press the start button and your logic affects what happens to the action screen.
*/


import processing.sound.*;


SoundFile intro;
SoundFile mainSound;//game sound one couldnt be decoded
SoundFile gameOverSound;

int level = 0;
int xPos, yPos = 10;
int jonesX = 1065;
int jonesY = 843;
int savedLevel;
boolean soundLock = false;//this ensures that songs won't be played over and over again in a draw loop. Also dont put songs in the drawloop unless you want crazy feedback.
boolean GOsoundLock = false;//this is the game over version
static final int FADE = 2500;

PImage LevelOne;
PImage LevelFour;
PImage IndianaJones;
PImage IndianaJonesLeft;
PImage IndianaJonesRight;
PImage GameOver;

Block blockOne = new Block(xPos, yPos);

void setup() {
  IndianaJones = loadImage("IndianaJones.png");
  IndianaJonesLeft = loadImage("IndianaJonesLeft.png");
  IndianaJonesRight = loadImage("IndianaJonesRight.png");
  LevelOne = loadImage("Level1.png");
  LevelFour = loadImage("Level4.png");
  GameOver = loadImage("GameOver.png");
  intro = new SoundFile(this, "introSong.mp3");
  mainSound = new SoundFile(this, "mainTrack.mp3");//cannot be decoded? for now will be replaced with workable sound
  gameOverSound = new SoundFile(this, "mainTrack.mp3");
  intro.play();
  intro.loop();
 // saveProgress(level);
  //retrieveProgress(); uncomment for crashes lol
}

public void settings() {
  fullScreen();
}

void draw() {
  
  background(33);
  
  if (level == 0) {
    drawMenuScreen();
  } else if (level == 1) {
    if(soundLock == false) {
      intro.stop();//stops the intro music, will now play the main music
      mainSound.play();
      mainSound.loop();
      soundLock = true;//this can never be accessed again
    }
    drawLevelOne();
  } else if (level == 2) {
    drawLevelTwo();
  } else if (level == 3) {
    drawLevelThree();
  } else if (level == 4) {
    drawLevelFour(1550, 820);
  } else if (level == 5) {
    drawLevelFive();
  } else if (level == 6) {
    if(GOsoundLock == false) {
      mainSound.stop();//stops the normal game sound at this point and plays game over sound
      gameOverSound.play();//there is no stop to this. This tune will continue forever and I dont know where to stop it *BUG WARNING*
      gameOverSound.loop();
      GOsoundLock = true;
    }
    drawGameOver();
  }
}
 
  
  void drawMenuScreen(){
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
  if(mousePressed) {
   level = 1;//sets it to the first level 
  }
  
}      


//put the play logic method in the main class, i didnt do it cuz i didnt want to override anyone elses work in github
void playLogic() {
  if(mouseX >= 0 && mouseX <= (width/3) + (width/15) && mouseY >= 13.5 * (height/15) && mouseY <= height) {
    //the above conditional checks 
    blockOne.runLine(blockOne.blockText); 
    /* Dont uncomment this until all of the classes have been initialized
    blockTwo.runLine(blockTwo.blockText); 
    blockThree.runLine(blockThree.blockText); 
    blockFour.runLine(blockFour.blockText); 
    blockFive.runLine(blockFive.blockText); 
    blockSix.runLine(blockSix.blockText);
    blockSeven.runLine(blockSeven.blockText);  
    blockEight.runLine(blockEight.blockText); 
    blockNine.runLine(blockNine.blockText); 
    blockTen.runLine(blockTen.blockText);
    action.detectWin();//this might be messed up, remove this if error occurs. 
    */
  }
}

void drawLevelOne() {
 
  image(LevelOne, 800, 45);
  image(IndianaJones, jonesX, jonesY);
  blockOne.drawBlock();
  playLogic();
}

void drawLevelTwo() {
}

void drawLevelThree() {
}

void drawLevelFour(int jonesX, int jonesY) {
  
  image(LevelFour, 800, 45);
  image(IndianaJones, jonesX, jonesY);
  blockOne.drawBlock();
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
