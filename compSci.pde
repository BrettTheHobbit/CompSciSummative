/* ICS4U1 - Brett Hobbs, Shanif Syed, Nehal Pamma, JC Abanto
The idea of this educational game is to teach younger children about logic by gameifying it.
The game is split up into two different states, the logic and the action. The logic screen is where you can move around "Logic Blocks" which changes what happens on the "Action Screen"
You can keep moving around "Logic Blocks" until you are satisfied with the outcome and you think you can reach the end, then you press the start button and your logic affects what happens to the action screen.
*/

int level = 1;
PImage GridBlock;
float[] xGridPosition = { 850, 1025, 1200, 1375, 1550 };
float[] yGridPosition = { 125, 300, 475, 650, 825 };

void setup() {
  
  GridBlock = loadImage("Platform.png");
  
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
  background(30,40,50); // insert menu screen
}


void drawLevelOne() {
  
  background(0, 80, 0); // insert backdrop
  
  GridBlock.resize(175, 175);
  int j = 0;
  for (int i = 0; i < xGridPosition.length; i++) {
    image(GridBlock, xGridPosition[i], yGridPosition[j]);
    if (i == xGridPosition.length - 1 && j < 4) {
      j = j + 1;
      i = 0;
      image(GridBlock, xGridPosition[i], yGridPosition[j]);
    } else {
      image(GridBlock, xGridPosition[i], yGridPosition[4]);
    }
  }
}

void drawLevelTwo() {
}

void drawLevelThree() {
}

void drawLevelFour() {
}

void drawLevelFive() {
}



  
