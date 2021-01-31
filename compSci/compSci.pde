/* ICS4U1 - Brett Hobbs, Shanif Syed, Nehal Pamma, JC Abanto
The idea of this educational game is to teach younger children about logic by gameifying it.
The game is split up into two different states, the logic and the action. The logic screen is where you can move around "Logic Blocks" which changes what happens on the "Action Screen"
You can keep moving around "Logic Blocks" until you are satisfied with the outcome and you think you can reach the end, then you press the start button and your logic affects what happens to the action screen.
*/

import processing.sound.*;

SoundFile intro;
SoundFile mainSound; //game sound one couldnt be decoded
SoundFile gameOverSound;

int level = 1;
int xPos, yPos = 10;
int savedLevel;
int jonesX, jonesY;
boolean soundLock = false;//this ensures that songs won't be played over and over again in a draw loop. Also dont put songs in the drawloop unless you want crazy feedback.
boolean GOsoundLock = false;//this is the game over version
boolean clickGo = false;//this is used to stop the constant movement of the sprite

PImage LevelOne;
PImage LevelTwo;
PImage LevelFour;
PImage LevelFive;
PImage IndianaJones;
PImage IndianaJonesLeft;
PImage IndianaJonesRight;
PImage GameOver;

Block blockOne = new Block(xPos, yPos);
Block blockTwo = new Block(xPos, yPos + (7 * height/15));
Block blockThree = new Block(xPos, yPos + (14 * height/15));
Block blockFour = new Block(xPos, yPos + (21 * height/15));
Block blockFive = new Block(xPos, yPos + (28 * height/15));
Block blockSix = new Block(xPos, yPos + (35 * height/15));
Block blockSeven = new Block(xPos, yPos + (42 * height/15));
Block blockEight = new Block(xPos, yPos + (49 * height/15));
Block blockNine = new Block(xPos, yPos + (56 * height/15));
Block blockTen = new Block(xPos, yPos + (63 * height/15));

void setup() {
  println((height/15));
  IndianaJones = loadImage("IndianaJones.png");
  IndianaJonesLeft = loadImage("IndianaJonesLeft.png");
  IndianaJonesRight = loadImage("IndianaJonesRight.png");
  LevelOne = loadImage("Level1.png");
  LevelTwo = loadImage("pixil-frame-0.png");
  LevelFour = loadImage("Level4.png");
  LevelFive = loadImage("level5.png");
  GameOver = loadImage("GameOver.png");
  /* intro = new SoundFile(this, "introSong.mp3");
  mainSound = new SoundFile(this, "mainTrack.mp3");//cannot be decoded? for now will be replaced with workable sound
  gameOverSound = new SoundFile(this, "mainTrack.mp3"); */
  //intro.play();
  //intro.loop();
  //saveProgress(level);
  //retrieveProgress(); uncomment for crashes lol
}

public void settings() {
  size(900, 600);
} 

void draw() {
  
  background(#5d5c73);
  
  if (level == 0) {
    drawMenuScreen();
  } else if (level == 1) {
    /* if(soundLock == false) {
      intro.stop();//stops the intro music, will now play the main music
      mainSound.play();
      mainSound.loop();
      soundLock = true;//this can never be accessed again 
    } */
    drawLevelOne(990, 870);
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
    /* if(GOsoundLock == false) {
      //mainSound.stop();//stops the normal game sound at this point and plays game over sound
      //gameOverSound.play();//there is no stop to this. This tune will continue forever and I dont know where to stop it *BUG WARNING*
      //gameOverSound.loop();
      GOsoundLock = true;
    } */
  } else if (level == 7) {
    drawTutorial();
  }
}

void drawMenuScreen() {
  
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
  text("Logic Quest", width/2,150);
  textSize(width/50);
  text("Press Anywhere to continue", width/2, height/2.4);
  
  image(img, width/2, height/1.34);
  image(img2, width/2, height/1.67);
  
  if (mousePressed) {
    level = 1;
  }
}

//put the play logic method in the main class, i didnt do it cuz i didnt want to override anyone elses work in github
void playLogic(int jonesX, int jonesY) {//only draws the last move, not all moves in succession
if(mouseX >= 0 && mouseX <= (width/3) + (width/15) && mouseY >= 13.5 * (height/15) && mouseY <= height ) {
    //the above conditional checks 
    blockOne.runLine(blockOne.blockText); 
    //Dont uncomment this until all of the classes have been initialized
    wait(90);//should be 1.5 seconds
    blockTwo.runLine(blockTwo.blockText, jonesX, jonesY); 
    blockThree.runLine(blockThree.blockText,jonesX, jonesY); 
    blockFour.runLine(blockFour.blockText,jonesX, jonesY); 
    blockFive.runLine(blockFive.blockText,jonesX, jonesY); 
    blockSix.runLine(blockSix.blockText,jonesX, jonesY);
    blockSeven.runLine(blockSeven.blockText,jonesX, jonesY);  
    blockEight.runLine(blockEight.blockText,jonesX, jonesY); 
    blockNine.runLine(blockNine.blockText,jonesX, jonesY); 
    blockTen.runLine(blockTen.blockText,jonesX, jonesY);
   // action.detectWin();//this might be messed up, remove this if error occurs. 
    
    clickGo = false;//this is so the logic isn't accidentally looped through mouse clicks
  }
}

void drawLevelOne(int jonesX, int jonesY) {
  push();
  scale(.5);//this is how to properly scale all the imagery (just this line).
  image(LevelOne, 4 *(width/5), height/7.5);
  image(IndianaJones, jonesX, jonesY);
  pop();
  fill(#7b9095);
  rect(0, 0, width/3, height); 
  blockOne.drawBlock();//draws 'scratch blocks'
  blockTwo.drawBlock();
  blockThree.drawBlock();
  blockFour.drawBlock();
  blockFive.drawBlock();
  blockSix.drawBlock();
  blockSeven.drawBlock();
  blockEight.drawBlock();
  blockNine.drawBlock();
  blockTen.drawBlock();
  drawBackground();//draws the green button etc.
  playLogic(jonesX, jonesY);//runs the actual button logic when the grren button is pressed
  level1Hit();
}

void drawLevelTwo() {
  push();
  scale(.5);
  image(LevelTwo,4 *(width/5), height/7.5);
  pop();
  blockOne.drawBlock();
  blockTwo.drawBlock();
  //playLogic(jonesX, jonesY); IDK where to put it, I assume all the other ones must change as well
}

void drawLevelThree() {
}

void drawLevelFour(int jonesX, int jonesY) {
  push();
  scale(.5);
  image(LevelFour,4 *(width/5), height/7.5);
  pop();
  image(IndianaJones, jonesX, jonesY);
  blockOne.drawBlock();
  blockTwo.drawBlock();
  playLogic(jonesX, jonesY);
}

void drawLevelFive() {
  push();
  scale(.5);
  image(LevelFive,4 *(width/5), height/7.5);
  pop();
  blockOne.drawBlock();
  blockTwo.drawBlock();
  //playLogic(jonesX, jonesY);
}

void drawGameOver() {
  
  GameOver.resize(width, height);
  image(GameOver, 0, 0);
  
   if (mousePressed && mouseX > (width/4)+25 && mouseX < 3*(width/4)-45 && mouseY > 3*(height/5)+90 && mouseY < 4*(height/5)+75) {
     level = 0;
   }
}

void mouseClicked() {
  clickGo = true;
  blockOne.updateText();
  blockTwo.updateText();
  blockThree.updateText();
  blockFour.updateText();
  blockFive.updateText();
  blockSix.updateText();
  blockSeven.updateText();
  blockEight.updateText();
  blockNine.updateText();
  blockTen.updateText();
}

void drawTutorial() {
  image(IndianaJones, width/3+570, 500);
  blockOne.drawBlock();
  blockTwo.drawBlock();
  playLogic(width/3+570, 500);
  fill(#FFFFFF);
  textSize(30);
  text("  Click the dotted lines to change the direction to where you want to go in \norder from your first move to its last. When you're ready to run it, click play.\n                            Practice moving around the empty space.", width/3+90, height/6);
}
  
  //this is the universal logic background.
 void drawBackground() {//all of this just draws the UI on the left side of the screen
  push();
  scale(.75);
  ellipseMode(CENTER);//personal preference, if you want to change it you can later   
  fill(#0ca716);//fills the green for the start button   
  rect(0, 16*(height/15), width/3, height/4);//green rectangle
  ellipse(width/2.75, 18 * height/15, 200, 200);//play circle
  fill(#05e613);
  stroke(#14d721);
  //all of these are basically UI elements that bear no meaning on the actual logic of the game
  textSize(width/10);   
  text("Play", (width/15) - width/15, 18.5 * (height/15));//will write out the text after updating it
  strokeWeight(5);
  triangle((width/3.15) - 20, 17.4 * height/15, (width/3.15) - 20, 18.2 * height/15, (width/3.15) + 80, 17.8 * height/15);
  noStroke();//play triangle
  pop();
 }
 
 void wait(int timeToWait) {//is used to delay the program, mainly for animations
   for(int i = 0; i < timeToWait; i++) {
     
   }
 }
  
