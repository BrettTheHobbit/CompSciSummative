/*
This class displays the puzzle action. checking if the player and idol are touching and acting out everything that is said to happen in the logic class.
*/

//static class action was removed cuz it had nothing in it.

void level1Hit(){
 if(get (compSciMain.jonesX+60, compSciMain.jonesY+65) == color (109, 76, 65) && compSciMain.jonesX+60 >= 670 && compSciMain.jonesX+60 <= 690 && compSciMain.jonesY >= 450 && compSciMain.jonesY <= 515){ // bottom right brown
  compSciMain.jonesX = compSciMain.jonesX - 25;
 }
 if(get (compSciMain.jonesX+60, compSciMain.jonesY+65) == color (109, 76, 65) && compSciMain.jonesX+60 >= 560 && compSciMain.jonesX+60 <= 675 && compSciMain.jonesY >= 450 && compSciMain.jonesY <= 435){ // bottom right top brown
   compSciMain.jonesY = compSciMain.jonesY + 25;
 }
  if(get (compSciMain.jonesX+60, compSciMain.jonesY+65) == color (0, 0, 0) && compSciMain.jonesY >= 520){ // lower black
   compSciMain.jonesY = compSciMain.jonesY - 25;
 }
   if(get (compSciMain.jonesX+60, compSciMain.jonesY+65) == color (0, 0, 0) && compSciMain.jonesX >= 370 && compSciMain.jonesX <= 390 && compSciMain.jonesY >= 450 && compSciMain.jonesY <= 520){ // lower left black
   compSciMain.jonesX = compSciMain.jonesX + 25;
 }
 if(get (compSciMain.jonesX+60, compSciMain.jonesY+65) == color (109, 76, 65) && compSciMain.jonesX+60 >= 385 && compSciMain.jonesX+60 <= 500 && compSciMain.jonesY >= 450 && compSciMain.jonesY <= 475){ // bottom left top brown
   compSciMain.jonesY = compSciMain.jonesY + 25;
 }
 if(get (compSciMain.jonesX+60, compSciMain.jonesY+65) == color (109, 76, 65) && compSciMain.jonesX+60 >= 560 && compSciMain.jonesX+60 <= 580 && compSciMain.jonesY >= 350 && compSciMain.jonesY <= 450){ // bottom lane right
   compSciMain.jonesX = compSciMain.jonesX - 25;
 }
 if(get (compSciMain.jonesX+60, compSciMain.jonesY+65) == color (109, 76, 65) && compSciMain.jonesX+60 >= 480 && compSciMain.jonesX+60 <= 500 && compSciMain.jonesY >= 350 && compSciMain.jonesY <= 450){ // bottom lane left
   compSciMain.jonesX = compSciMain.jonesX + 25;
 }
 if(get (compSciMain.jonesX+60, compSciMain.jonesY+65) == color (109, 76, 65) && compSciMain.jonesX+60 >= 385 && compSciMain.jonesX+60 <= 500 && compSciMain.jonesY >= 350 && compSciMain.jonesY <= 375){ // middle left bottom brown
 compSciMain.jonesY = compSciMain.jonesY - 25;
 }
 if(get (compSciMain.jonesX+60, compSciMain.jonesY+65) == color (0, 0, 0) && compSciMain.jonesX >= 370 && compSciMain.jonesX <= 390 && compSciMain.jonesY >= 285 && compSciMain.jonesY <= 350){ // middle left black
   compSciMain.jonesX = compSciMain.jonesX + 25;
 }
 if(get (compSciMain.jonesX+60, compSciMain.jonesY+65) == color (109, 76, 65) && compSciMain.jonesX+60 >= 565 && compSciMain.jonesX+60 <= 835 && compSciMain.jonesY >= 350 && compSciMain.jonesY <= 375){ // middle right bottom brown
 compSciMain.jonesY = compSciMain.jonesY - 25;
 }
 if(get (compSciMain.jonesX+60, compSciMain.jonesY+65) == color (109, 76, 65) && compSciMain.jonesX+60 >= 385 && compSciMain.jonesX+60 <= 695 && compSciMain.jonesY >= 265 && compSciMain.jonesY <= 290){ // middle left top brown
 compSciMain.jonesY = compSciMain.jonesY + 25;
 }
 if(get (compSciMain.jonesX+60, compSciMain.jonesY+65) == color (109, 76, 65) && compSciMain.jonesX+60 >= 765 && compSciMain.jonesX+60 <= 835 && compSciMain.jonesY >= 265 && compSciMain.jonesY <= 290){ // middle right top brown
 compSciMain.jonesY = compSciMain.jonesY + 25;
 }
 if(get (compSciMain.jonesX+60, compSciMain.jonesY+65) == color (0, 0, 0) && compSciMain.jonesX >= 840 && compSciMain.jonesX <= 860 && compSciMain.jonesY >= 285 && compSciMain.jonesY <= 350){ // middle right black
 compSciMain.jonesX = compSciMain.jonesX - 25;
 }
 if(get (compSciMain.jonesX+60, compSciMain.jonesY+65) == color (109, 76, 65) && compSciMain.jonesX+60 >= 765 && compSciMain.jonesX+60 <= 780 && compSciMain.jonesY >= 130 && compSciMain.jonesY <= 280){ // top lane right
 compSciMain.jonesX = compSciMain.jonesX - 25;
 }
 if(get (compSciMain.jonesX+60, compSciMain.jonesY+65) == color (109, 76, 65) && compSciMain.jonesX+60 >= 680 && compSciMain.jonesX+60 <= 695 && compSciMain.jonesY >= 130 && compSciMain.jonesY <= 280){ // top lane left
 compSciMain.jonesX = compSciMain.jonesX + 25;
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
