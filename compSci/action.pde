/*
This class displays the puzzle action. checking if the player and idol are touching and acting out everything that is said to happen in the logic class.
*/

//static class action was removed cuz it had nothing in it.

void level1Hit(){
 if(compSciMain.jonesX >= 670 * 1.9 && compSciMain.jonesY >= 450 * 1.8 && compSciMain.jonesY <= 515 * 1.8){ // bottom right brown
  // start at begining
 }
 if(compSciMain.jonesX >= 560 * 1.9 && compSciMain.jonesX <= 675 * 1.9 && compSciMain.jonesY <= 450 * 1.9 && compSciMain.jonesY >= 380 * 1.8){ // bottom right top brown
  // start at begining
 }
   if(compSciMain.jonesX <= 390 * 1.9 && compSciMain.jonesY >= 450 * 1.8 && compSciMain.jonesY <= 520 * 1.8){ // lower left black
   // start at begining
 }
 if(compSciMain.jonesX >= 385 * 1.9 && compSciMain.jonesX <= 500 * 1.9 && compSciMain.jonesY <= 450 * 1.9 && compSciMain.jonesY >= 380 * 1.8){ // bottom left top brown
   // start at begining
 }
 if(compSciMain.jonesX >= 385 * 1.9 && compSciMain.jonesX <= 660 * 1.9 && compSciMain.jonesY >= 84 * 1.9 && compSciMain.jonesY <= 280 * 1.8){ // middle gray area
 // start at begining
 }
 if(compSciMain.jonesX >= 780 * 1.9 && compSciMain.jonesX <= 835 * 1.9 && compSciMain.jonesY >= 84 * 1.9 && compSciMain.jonesY <= 280 * 1.8){ // right side grey area
  // start at begining
   }
   if(compSciMain.jonesX <= 360 * 1.9 || compSciMain.jonesX >= 860 * 1.9 || compSciMain.jonesY >= 540 * 1.9 || compSciMain.jonesY <= 80 * 1.9){ // border
   // start at begining
  }
}

void levelFourHit(){
    if(compSciMain.jonesX <= 360 * 1.9 || compSciMain.jonesX >= 860 * 1.9 || compSciMain.jonesY >= 540 * 1.9 || compSciMain.jonesY <= 80 * 1.9){ // border
   // start at begining
  }
   if(compSciMain.jonesX >= 520 * 1.9 && compSciMain.jonesX <= 835 * 1.9 && compSciMain.jonesY >= 70 * 1.9 && compSciMain.jonesY <= 230 * 1.8){ // middle gray area
 // start at begining
 }
   if(compSciMain.jonesX >= 715 * 1.9 && compSciMain.jonesX <= 835 * 1.9 && compSciMain.jonesY >= 240 * 1.9 && compSciMain.jonesY <= 410 * 1.8){ // left gray area
 // start at begining
 }
    if(compSciMain.jonesX >= 615 * 1.9 && compSciMain.jonesX <= 625 * 1.9 && compSciMain.jonesY >= 340 * 1.9 && compSciMain.jonesY <= 515 * 1.8){ // middle gray area
 // start at begining
 }
}

void levelFiveHit(){
    if(compSciMain.jonesX <= 360 * 1.8 || compSciMain.jonesX >= 860 * 1.8 || compSciMain.jonesY >= 540 * 1.8 || compSciMain.jonesY <= 40 * 1.8){ // border
   // start at begining
  }
   if(compSciMain.jonesX >= 385 * 1.8 && compSciMain.jonesX <= 835 * 1.8 && compSciMain.jonesY >= 70 * 1.8 && compSciMain.jonesY <= 195 * 1.8){ // top blue area
 // start at begining
 }
   if(compSciMain.jonesX >= 705 * 1.8 && compSciMain.jonesX <= 835 * 1.8 && compSciMain.jonesY >= 200 * 1.8 && compSciMain.jonesY <= 330 * 1.8){ // middle right blue area
 // start at begining
 }
    if(compSciMain.jonesX >= 775 * 1.8 && compSciMain.jonesX <= 835 * 1.8 && compSciMain.jonesY >= 330 * 1.8 && compSciMain.jonesY <= 515 * 1.8){ // bottom right blue area (near key)
 // start at begining
 }
  if(compSciMain.jonesX >= 385 * 1.8 && compSciMain.jonesX <= 775 * 1.8 && compSciMain.jonesY >= 460 * 1.8){ // bottom blue area (below key)
 // start at begining
 }
  if(compSciMain.jonesX >= 385 * 1.8 && compSciMain.jonesX <= 705 * 1.8 && compSciMain.jonesY >= 400 * 1.8){ // below start
 // start at begining
 }
}

//ALL FOUR OF THESE 
void moveLeft() {
  if (level == 1){
    push();
    scale(.5);
    image(LevelOne, 4 *(width/5), height/5.5);
    compSciMain.jonesX = compSciMain.jonesX - 200;
    image(IndianaJonesLeft, compSciMain.jonesX, compSciMain.jonesY);
    pop();
  } else if (level == 7) {
    background(33);
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
    image(LevelOne, 4 *(width/5), height/5.5);
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
    image(LevelOne, 4 *(width/5), height/5.5);
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
    image(LevelOne, 4 *(width/5),  height/5.5);
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
  if(level == 1 && compSciMain.jonesX >= 655 * 1.9 && compSciMain.jonesX <= 800 * 1.9 && compSciMain.jonesY >= 80 * 1.9 && compSciMain.jonesY <= 160 * 1.9){ // bottom right blue area (near key)
  level++;
 }
  if(level == 4 && compSciMain.jonesX >= 385 * 1.9 && compSciMain.jonesX <= 500 * 1.9 && compSciMain.jonesY >= 110 * 1.9 && compSciMain.jonesY <= 215 * 1.9){ // bottom right blue area (near key)
  level++;
 }
  if(level == 5 && compSciMain.jonesX >= 705 * 1.8 && compSciMain.jonesX <= 770 * 1.8 && compSciMain.jonesY >= 390 * 1.8 && compSciMain.jonesY <= 460 * 1.8){ // bottom right blue area (near key)
  level++;
 }
}
