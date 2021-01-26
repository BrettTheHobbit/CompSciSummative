/* ICS4U1 - Brett Hobbs, Shanif Syed, Nehal Pamma, JC Abanto
The idea of this educational game is to teach younger children about logic by gameifying it.
The game is split up into two different states, the logic and the action. The logic screen is where you can move around "Logic Blocks" which changes what happens on the "Action Screen"
You can keep moving around "Logic Blocks" until you are satisfied with the outcome and you think you can reach the end, then you press the start button and your logic affects what happens to the action screen.
*/

int level = 1;

PImage LevelOne;

void setup() {
  
  LevelOne = loadImage("Level1.png");
  
}

public void settings() {

  fullScreen();
}

void draw() {
    
  switch (level) {
    
    case 1:
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
  }
}
 
      
void drawMenuScreen() {
  background(0,80,0); // insert menu screen
}


void drawLevelOne() {
  
  background(#5A69A0);
  image(LevelOne, 800, 45);
  drawLogicScreen();
}

void drawLevelTwo() {
}

void drawLevelThree() {
}

void drawLevelFour() {
}

void drawLevelFive() {
}



  
