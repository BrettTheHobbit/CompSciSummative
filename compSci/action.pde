/*
This class displays the puzzle action. checking if the player and idol are touching and acting out everything that is said to happen in the logic class.
*/

static class action {
}

void moveLeft() {
  if (level == 1){
  image(LevelOne, width-970, height-950);
  jonesX = jonesX - 175;
  image(IndianaJonesLeft, jonesX, jonesY);
  }
}

void moveRight() {
  if(level == 1){
    jonesX = jonesX + 175;
  image(LevelOne, width-970, height-950);
  image(IndianaJonesRight, jonesX, jonesY);
  }
}

void moveForwards() {
  if(level == 1){
  image(LevelOne, width-970, height-950);
  jonesY = jonesY - 175;
  image(IndianaJones, jonesX, jonesY);
  }
}

void moveBackwards() {
  if(level == 1){
  image(LevelOne, width-970, height-950);
  jonesY = jonesY + 175;
  image(IndianaJones, jonesX, jonesY);
  }
}

void detectWin() {
}
