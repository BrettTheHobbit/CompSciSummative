/*
This class displays the puzzle action. checking if the player and idol are touching and acting out everything that is said to happen in the logic class.
*/

static class action {
}

void moveLeft(int jonesX, int jonesY) {
  if (level == 1){
    image(LevelOne, width-970, height-950);
    jonesX = jonesX - 175;
    image(IndianaJonesLeft, jonesX, jonesY);
  } else if (level == 7) {
    background(33);
    blockOne.drawBlock();
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
    image(LevelOne, width-970, height-950);
    image(IndianaJonesRight, jonesX, jonesY);
  } else if (level == 7) {
    background(33);
    blockOne.drawBlock();
    fill(#FFFFFF);
    textSize(30);
    text("  Click the dotted lines to change the direction to where you want to go in \norder from your first move to its last. When you're ready to run it, click play.\n                            Practice moving around the empty space.", width/3+90, height/6);
    jonesX = jonesX + 175;
    image(IndianaJonesRight, jonesX, jonesY);
  }
}

void moveForwards(int jonesX, int jonesY) {
  if(level == 1){
    image(LevelOne, width-970, height-950);
    jonesY = jonesY - 175;
    image(IndianaJones, jonesX, jonesY);
  } else if (level == 7) {
    background(33);
    blockOne.drawBlock();
    fill(#FFFFFF);
    textSize(30);
    text("  Click the dotted lines to change the direction to where you want to go in \norder from your first move to its last. When you're ready to run it, click play.\n                            Practice moving around the empty space.", width/3+90, height/6);
    jonesY = jonesY - 175;
    image(IndianaJones, jonesX, jonesY);
  }
}

void moveBackwards(int jonesX, int jonesY) {
  if(level == 1){
    image(LevelOne, width-970, height-950);
    jonesY = jonesY + 175;
    image(IndianaJones, jonesX, jonesY);
  } else if (level == 7) {
    background(33);
    blockOne.drawBlock();
    fill(#FFFFFF);
    textSize(30);
    text("  Click the dotted lines to change the direction to where you want to go in \norder from your first move to its last. When you're ready to run it, click play.\n                            Practice moving around the empty space.", width/3+90, height/6);
    jonesY = jonesY + 175;
    image(IndianaJones, jonesX, jonesY);
  }
}

void detectWin() {
}
