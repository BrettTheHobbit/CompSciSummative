/* ICS4U1 - Brett Hobbs, Shanif Syed, Nehal Pamma, JC Abanto

 The idea of this educational game is to teach younger children about logic by gameifying it.
 The game is split up into two different states, the logic and the action. The logic screen is where you can move around "Logic Blocks" which changes what happens on the "Action Screen"
 You can keep moving around "Logic Blocks" until you are satisfied with the outcome and you think you can reach the end, then you press the start button and your logic affects what happens to the action screen.
 
 TODO LIST:
 The filereader/writer doesnt write to the file in the repository, it either doesn't write or writes to the wrong file and someone has a text file with 69 in it
 in the move backwards method, why are only the first two blocks drawn? are they all supposed to be drawn?
 I also left the program going for 10 mins-ish and a stackoverflow happened
 If i input nothing, then the image disappears
 After playing the first level, the actions that you input dont work
 Wait time between movement (the character just appears at the end)
 save/load functionality
 collisions (borders and win con)
 */


import processing.sound.*;

SoundFile intro;
SoundFile mainSound; //game sound one couldnt be decoded
SoundFile gameOverSound;

int level = 0;
int xPos, yPos = 10;
int savedLevel = 1;//starter is on one but will autosave after every level completetion

boolean soundLock = false;//this ensures that songs won't be played over and over again in a draw loop. Also dont put songs in the drawloop unless you want crazy feedback.
boolean GOsoundLock = false;//this is the game over version
boolean backClick = true;//stops from clicking back and going straight to level one.
boolean levelOneSetup = false;
boolean levelTwoSetup = false;

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

static class compSciMain {
  static int jonesX, jonesY;
}


void setup() {
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
}

public void settings() {
  size(900, 600);
} 

void draw() {
  background(#5d5c73); //gives that light purple background
  switch(level) {//swapped out the if statement for simplicity sake
  case 0:
    drawMenuScreen();
    break; //the break prevents overflow from the other cases
  case 1:
    /* if(soundLock == false) {
     intro.stop();//stops the intro music, will now play the main music
     mainSound.play();
     mainSound.loop();
     soundLock = true;//this can never be accessed again 
     } */
    drawLevelOne();
    break;
  case 2:
    drawLevelTwo();
    break;
  case 3:
    drawLevelThree();
    break;
  case 4:
    drawLevelFour();
    break;
  case 5:
    drawLevelFive();
    break;
  case 6:
    if (GOsoundLock == false) {

      //mainSound.stop();//stops the normal game sound at this point and plays game over sound
      //gameOverSound.play();//there is no stop to this. This tune will continue forever and I dont know where to stop it *BUG WARNING*
      //gameOverSound.loop();
      GOsoundLock = true;
    } 
    drawGameOver();
    break;
  case 7:
    drawTutorial();
    break;
  case 8:
    drawSelectScreen();//selects which levels to play
    break;
  case 9:
    drawLoadGame();//will load the game from the written file class
  }
}
void drawSelectScreen() {
  backClick = true;
  fill(255);
  textSize (width/25);
  text("Click the level you want to play!", width/5, height/12);
  push();//scales down all levels
  scale(0.125);//makes the levels into thumbnail sizes
  image(LevelOne, width, height*2);
  image(LevelTwo, width * 3.25, height * 2);//uncomment the third level when added.
  //image(LevelFour, width * 5.5, height * 2);
  image(LevelFour, width * 2.125, height * 5);
  image(LevelFive, width * 4.5, height * 5);
  pop();
  text("<---- Back", 0, height);
  textSize(width/45);
  text("Level One", width/7, height/2);
  text("Level Two", width/2.35, height/2);
  text("Level Three", width/1.435, height/2);
  text("Level Four", width/3.5, height/1.14);
  text("Level Five", width/1.75, height/1.14);
  if (mousePressed && mouseX > width/8 && mouseX < (width/8) + 125 && mouseY > (height * 2)/8 && mouseY < (height * 2)/8 + 125) {
    level = 1;
    levelOneSetup = true;
  } else if (mousePressed && mouseX > (width * 3.25)/8 && mouseX < ((width*3.25)/8) + 125 && mouseY > (height * 2)/8 && mouseY < (height * 2)/8 + 125) {
    level = 2;
  } else if (mousePressed && mouseX > (width * 5.5)/8 && mouseX < ((width * 5.5)/8) + 125 && mouseY > (height * 2)/8 && mouseY < (height * 2)/8 + 125) {
    level = 3;//this takes you to the same level as two
  } else if (mousePressed && mouseX > (width * 2.125)/8 && mouseX < ((width * 2.125)/8) + 125 && mouseY > (height * 5)/8 && mouseY < (height * 5)/8 + 125) {
    level = 4;
  } else if (mousePressed && mouseX > (width * 4.5)/8 && mouseX < ((width * 4.5)/8) + 125 && mouseY > (height * 5)/8 && mouseY < (height * 5)/8 + 125) {
    level = 5;
  } else if (mousePressed && mouseX > 0 && mouseX < width/4.5 && mouseY < height && mouseY > height/1.05) {
    level = 0;//takes you back to main menu
    backClick = true;//saves the player from going striaght to the level
  }
}

void drawLoadGame() {
  //level = retrieveProgress();//needs to uncomment the rest of the save functionality
}

void drawMenuScreen() {

  PImage img = loadImage("mainScreenPlat.png");
  PImage img2 = loadImage("IndianaJones.png");
  PImage img3 = loadImage("cave-background.png");

  rectMode(CENTER);
  fill(#000000);
  rect(width/2, height/2, width/1/125, height/1.2);
  fill(255, 255, 255);
  imageMode(CENTER);
  image(img3, width/2, height/2, width/1.125, height/1.2);

  createFont("Imprint MT Shadow", 32);
  textAlign(CENTER, CENTER);
  textSize(width/20);
  fill(155);
  text("Logic Quest", width/2, 150);
  textSize(width/50);
  text("Press 'P' to play!", width/2, height/2.4);

  image(img, width/2, height/1.34);
  image(img2, width/2, height/1.67);

  textSize(width/35);
  fill(#3a3b69);
  rect(width/4.5, height/1.75, 200, 100);
  rect(width/1.35, height/1.75, 200, 100);
  rect(width/2, height/1.15, 200, 100);
  fill(155);
  text("Press 'S'\n to select a level!", width/4.5, height/1.75);
  text("Press 'L'\n to load a save!", width/1.35, height/1.75);
  text("Press 'T'\n to play\n the tutorial!", width/2, height/1.15);
  rectMode(CORNER);//resets the modes in order to save the scaling for level one
  imageMode(CORNER);
  textAlign(CORNER, CORNER);
  if (mouseButton == 0) {//this is when the mouse is released
    backClick = false;
  }
  if (keyPressed && (key == 'p' || key == 'P')) {
    level = 1;
    levelOneSetup = true;
  } else if (keyPressed && (key == 's' || key == 'S')) {//refers to the select screen
    level = 8;
  } else if (keyPressed && (key == 'l' || key == 'L')) {//refers to loading a save
    level = 9;
  } else if (keyPressed && (key == 't' || key == 'T')) {
    level = 7;//takes to tutorial
  }
}

//put the play logic method in the main class, i didnt do it cuz i didnt want to override anyone elses work in github
void playLogic() {//only draws the last move, not all moves in succession
  if (mouseX >= 0 && mouseX <= (width/3) + (width/15) && mouseY >= 13.5 * (height/15) && mouseY <= height && mousePressed) {
    //the above conditional checks 
    levelOneSetup = false;
  } 
  if (levelOneSetup == false && level == 1) {//this is the reason nothing happens on the second level
    blockOne.runLine(blockOne.blockText);
    delay(1000);
    blockTwo.runLine(blockTwo.blockText);
    delay(1000);
    blockThree.runLine(blockThree.blockText);
    wait(1500);
    blockFour.runLine(blockFour.blockText); 
    wait(1500);
    blockFive.runLine(blockFive.blockText); 
    wait(1500);
    blockSix.runLine(blockSix.blockText);
    wait(1500);
    blockSeven.runLine(blockSeven.blockText);
    wait(1500);
    blockEight.runLine(blockEight.blockText); 
    wait(1500);
    blockNine.runLine(blockNine.blockText);
    wait(1500);
    blockTen.runLine(blockTen.blockText);
    //detectWin();//this might be messed up, remove this if error occurs.
  }
}

void drawLevelOne() {
  compSciMain.jonesX = 990;
  compSciMain.jonesY = 870;
  if (levelOneSetup) {
    rectMode(CORNER);
    push();
    scale(.5);//this is how to properly scale all the imagery (just this line).
    image(LevelOne, 4 *(width/5), height/5.5);
    image(IndianaJones, compSciMain.jonesX, compSciMain.jonesY);
    pop();
  }
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
  playLogic();//runs the actual button logic when the grren button is pressed
  level1Hit();
  detectWin();
}

void drawLevelTwo() {
  compSciMain.jonesX = 820;
  compSciMain.jonesY = 840;
  push();
  scale(.5);//this is how to properly scale all the imagery (just this line).
  image(LevelTwo, 4 *(width/5), height/7.5);
  image(IndianaJones, compSciMain.jonesX, compSciMain.jonesY);
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
  playLogic();//runs the actual button logic when the grren button is pressed
}

void drawLevelThree() {
  compSciMain.jonesX = 820;
  compSciMain.jonesY = 840;
  push();
  scale(.5);//this is how to properly scale all the imagery (just this line).
  image(LevelTwo, 4 *(width/5), height/7.5);
  image(IndianaJones, compSciMain.jonesX, compSciMain.jonesY);
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
  playLogic();//runs the actual button logic when the grren button is pressed
  levelThreeHit();
  detectWin();
}

void drawLevelFour() {
  compSciMain.jonesX = 1500;
  compSciMain.jonesY = 860;
  push();
  scale(.5);//this is how to properly scale all the imagery (just this line).
  image(LevelFour, 4 *(width/5), height/7.5);
  image(IndianaJones, compSciMain.jonesX, compSciMain.jonesY);
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
  playLogic();//runs the actual button logic when the grren button is pressed
  levelFourHit();
  detectWin();
}

void drawLevelFive() {
  compSciMain.jonesX = 800;
  compSciMain.jonesY = 620;
  push();
  scale(.5);//this is how to properly scale all the imagery (just this line).
  image(LevelFive, 4 *(width/5), height/7.5);
  image(IndianaJones, compSciMain.jonesX, compSciMain.jonesY);
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
  playLogic();//runs the actual button logic when the grren button is pressed
  levelFiveHit();
  detectWin();
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
  push();
  scale(.5);//this is how to properly scale all the imagery (just this line).
  image(IndianaJones, 1400, 500);
  pop();
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
  playLogic();
  fill(#FFFFFF);
  textSize(15);
  text("  Click the dotted lines to change the direction to where you want to go in \norder from your first move to its last. When you're ready to run it, click play.\n                            Practice moving around the empty space.", 320*width/900, height/6);
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
  int currentTime = millis();
  while (millis() - currentTime < timeToWait) {
  }
}
//the wait function is waiting until all of the calls before any of the movement happens, this also allows the player to edit the moves mid-run, there is also no restart
