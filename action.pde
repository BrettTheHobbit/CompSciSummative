/*
This class displays the puzzle action. checking if the player and idol are touching and acting out everything that is said to happen in the logic class.
*/

static class action {
}

void moveLeft(int jonesX) {
  jonesX = jonesX -175;
  //image(LevelOne, 800, 45);
  //image(IndianaJones, jonesX-175, jonesY);
}

void moveRight(int jonesX) {
  jonesX = jonesX + 175;
  //image(LevelOne, 800, 45);
  //image(IndianaJones, jonesX+175, jonesY);
}

void moveForwards(int jonesY) {
  jonesY = jonesY -175;
  //image(LevelOne, 800, 45);
  //image(IndianaJones, jonesX, jonesY-175);
}

void moveBackwards(int jonesY) {
  jonesY = jonesY + 175;
  //image(LevelOne, 800, 45);
  //image(IndianaJones, jonesX, jonesY+175);
}

void detectWin() {
}
