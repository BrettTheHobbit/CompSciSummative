/*
This class displays the puzzle action. checking if the player and idol are touching and acting out everything that is said to happen in the logic class.
*/

//static class action was removed cuz it had nothing in it.

void level1Hit(){//will detect if you reach the end of the first level
 if(get (jonesX+60, jonesY+65) == color (109, 76, 65) || get (jonesX+60, jonesY+65) == color (0, 0, 0)){
   jonesX = jonesX - 50;
   jonesY = jonesY - 50;
 }
}
//ALL FOUR OF THESE 
void moveLeft(int jonesX, int jonesY) {
  if (level == 1){
    push();
    scale(.5);
    image(LevelOne, 4 *(width/5), height/7.5);
    jonesX = jonesX - 175;
    image(IndianaJonesLeft, jonesX, jonesY);
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
    jonesX = jonesX - 175;
    image(IndianaJonesLeft, jonesX, jonesY);
  }
}

void moveRight(int jonesX, int jonesY) {
  if(level == 1){
    jonesX = jonesX + 175;
    push();
    scale(.5);
    image(LevelOne, 4 *(width/5), height/7.5);
    image(IndianaJonesRight, jonesX, jonesY);
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
    jonesX = jonesX + 175;
    image(IndianaJonesRight, jonesX, jonesY);
  }
}

void moveForwards(int jonesX, int jonesY) {
  if(level == 1){
    push();
    scale(.5);
    image(LevelOne, 4 *(width/5), height/7.5);
    jonesY = jonesY - 175;
    image(IndianaJones, jonesX, jonesY);
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
    jonesY = jonesY - 175;
    image(IndianaJones, jonesX, jonesY);
  }
}

void moveBackwards(int jonesX, int jonesY) {
  if(level == 1){
    push();
    scale(.5);
    image(LevelOne, 4 *(width/5),  height/7.5);
    jonesY = jonesY + 175;
    image(IndianaJones, jonesX, jonesY);
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
    jonesY = jonesY + 175;
    image(IndianaJones, jonesX, jonesY);
  }
}

void detectWin() {
}
