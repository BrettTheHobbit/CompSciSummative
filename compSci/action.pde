/*
This class displays the puzzle action. checking if the player and idol are touching and acting out everything that is said to happen in the logic class.
*/

//static class action was removed cuz it had nothing in it.

void level1Hit(){//will detect if you reach the end of the first level
 if(get (compSciMain.jonesX+60, compSciMain.jonesY+65) == color (109, 76, 65) || get (compSciMain.jonesX+60, compSciMain.jonesY+65) == color (0, 0, 0)){
   compSciMain.jonesX = compSciMain.jonesX - 50;
   compSciMain.jonesY = compSciMain.jonesY - 50;
 }
}
//ALL FOUR OF THESE 
void moveLeft() {
  if (level == 1){
    push();
    scale(.5);
    image(LevelOne, 4 *(width/5), height/7.5);
    compSciMain.jonesX = compSciMain.jonesX - 200;
    image(IndianaJonesLeft, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    blockOne.drawBlock();
    blockTwo.drawBlock();
  } else if (level == 7) {
    background(33);
    blockOne.drawBlock();
    blockTwo.drawBlock();
    fill(#FFFFFF);
    textSize(30);
    text("  Click the dotted lines to change the direction to where you want to go in \norder from your first move to its last. When you're ready to run it, click play.\n                            Practice moving around the empty space.", width/3+90, height/6);
    compSciMain.jonesX = compSciMain.jonesX - 200;
    image(IndianaJonesLeft, compSciMain.jonesX, compSciMain.jonesY);
  }
}

void moveRight() {
  if(level == 1){
    compSciMain.jonesX = compSciMain.jonesX + 200;
    push();
    scale(.5);
    image(LevelOne, 4 *(width/5), height/7.5);
    image(IndianaJonesRight, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    blockOne.drawBlock();
    blockTwo.drawBlock();
  } else if (level == 7) {
    background(33);
    blockOne.drawBlock();
    blockTwo.drawBlock();
    fill(#FFFFFF);
    textSize(30);
    text("  Click the dotted lines to change the direction to where you want to go in \norder from your first move to its last. When you're ready to run it, click play.\n                            Practice moving around the empty space.", width/3+90, height/6);
    compSciMain.jonesX = compSciMain.jonesX + 200;
    image(IndianaJonesRight, compSciMain.jonesX, compSciMain.jonesY);
  }
}

void moveForwards() {
  if(level == 1){
    push();
    scale(.5);
    image(LevelOne, 4 *(width/5), height/7.5);
    compSciMain.jonesY = compSciMain.jonesY - 175;
    image(IndianaJones, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    blockOne.drawBlock();
    blockTwo.drawBlock();
  } else if (level == 7) {
    background(33);
    blockOne.drawBlock();
    blockTwo.drawBlock();
    fill(#FFFFFF);
    textSize(30);
    text("  Click the dotted lines to change the direction to where you want to go in \norder from your first move to its last. When you're ready to run it, click play.\n                            Practice moving around the empty space.", width/3+90, height/6);
    compSciMain.jonesY = compSciMain.jonesY - 175;
    image(IndianaJones, compSciMain.jonesX, compSciMain.jonesY);
  }
}

void moveBackwards() {
  if(level == 1){
    push();
    scale(.5);
    image(LevelOne, 4 *(width/5),  height/7.5);
    compSciMain.jonesY = compSciMain.jonesY + 175;
    image(IndianaJones, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    blockOne.drawBlock();
    blockTwo.drawBlock();
  } else if (level == 7) {
    background(33);
    blockOne.drawBlock();
    blockTwo.drawBlock();
    fill(#FFFFFF);
    textSize(30);
    text("  Click the dotted lines to change the direction to where you want to go in \norder from your first move to its last. When you're ready to run it, click play.\n                            Practice moving around the empty space.", width/3+90, height/6);
    compSciMain.jonesY = compSciMain.jonesY + 175;
    image(IndianaJones, compSciMain.jonesX, compSciMain.jonesY);
  }
}

void detectWin() {
}
