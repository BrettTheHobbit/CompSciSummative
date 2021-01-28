/*
This class displays the puzzle action. checking if the player and idol are touching and acting out everything that is said to happen in the logic class.
*/

class action {
  
  int jonesX, jonesY = 0;
  action(int x, int y) {
    this.jonesX = x;
    this.jonesY = y;
  }
}

void movePlayer(int jonesX, int jonesY) {
  if (blockText == "Left") {
    jonesX = jonesX - 150;
  }
}
