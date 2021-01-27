/* ICS4U1 - Brett Hobbs, Shanif Syed, Nehal Pamma, JC Abanto
The idea of this educational game is to teach younger children about logic by gameifying it.
The game is split up into two different states, the logic and the action. The logic screen is where you can move around "Logic Blocks" which changes what happens on the "Action Screen"
You can keep moving around "Logic Blocks" until you are satisfied with the outcome and you think you can reach the end, then you press the start button and your logic affects what happens to the action screen.
*/

import ddf.minim.*;

Minim minim;
AudioPlayer player;

int level = 6;
int initialX = 0;
int initialY = 0;
static final int FADE = 2500;

PImage LevelOne;
PImage GameOver;
Block logic;

void setup() {
  
  logic = new Block(initialX, initialY);
  LevelOne = loadImage("Level1.png");
  GameOver = loadImage("GameOver.png");
 
  minim = new Minim(this);
  player = minim.loadFile("gameTheme.mp3");
  player.shiftGain(player.getGain(),-80,FADE);
  player.play();
  player.shiftGain(-80,20,FADE);
}

public void settings() {

  fullScreen();
}

void draw() {
    
  if (level == 0) {
    drawMenuScreen();
  } else if (level == 1) {
    drawLevelOne();
  } else if (level == 2) {
    drawLevelTwo();
  } else if (level == 3) {
    drawLevelThree();
  } else if (level == 4) {
    drawLevelFour();
  } else if (level == 5) {
    drawLevelFive();
  } else if (level == 6) {
    drawGameOver();
  }
}
 
      
void drawMenuScreen() {
  rect(0,0,width, height);
  fill(40, 60, 279);
}


void drawLevelOne() {
  
  background(#5A69A0);
  image(LevelOne, 800, 45);
  logic.runLine();
  logic.playLogic();
  logic.drawBlock();
  logic.updateText();
}

void drawLevelTwo() {
}

void drawLevelThree() {
}

void drawLevelFour() {
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




  
