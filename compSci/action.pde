/*
This class displays the puzzle action. checking if the player and idol are touching and acting out everything that is said to happen in the logic class.
*/

static class action {
}

void moveLeft() {
  image(LevelOne, 800, 45);
  image(IndianaJonesLeft, jonesX-175, jonesY);
}

void moveRight() {
  image(LevelOne, 800, 45);
  image(IndianaJonesRight, jonesX+175, jonesY);
}

void moveForwards() {
  image(LevelOne, 800, 45);
  image(IndianaJones, jonesX, jonesY-175);
}

void moveBackwards() {
  image(LevelOne, 800, 45);
  image(IndianaJones, jonesX, jonesY+175);
}

void detectWin() {
}
