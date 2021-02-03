/*
This class displays the puzzle action. checking if the player and idol are touching and acting out everything that is said to happen in the logic class.
*/

//These following methods are hit detection in case you move out of walls

void level1Hit(){//all of these just put him back at the start
 if(compSciMain.jonesX >= 670 * 1.9 && compSciMain.jonesY >= 450 * 1.8 && compSciMain.jonesY <= 515 * 1.8){ // bottom right area
    displayWarning();
 }
 if(compSciMain.jonesX >= 560 * 1.9 && compSciMain.jonesX <= 675 * 1.9 && compSciMain.jonesY <= 450 * 1.9 && compSciMain.jonesY >= 380 * 1.8){ // bottom right top brown
    displayWarning();
 }
 if(compSciMain.jonesX >= 385 * 1.9 && compSciMain.jonesX <= 500 * 1.9 && compSciMain.jonesY <= 450 * 1.9 && compSciMain.jonesY >= 380 * 1.8){ // bottom left top brown
     displayWarning();
 }
 if(compSciMain.jonesX >= 385 * 1.9 && compSciMain.jonesX <= 660 * 1.9 && compSciMain.jonesY >= 84 * 1.9 && compSciMain.jonesY <= 280 * 1.8){ // middle gray area
   displayWarning();
 }
 if(compSciMain.jonesX >= 780 * 1.9 && compSciMain.jonesX <= 835 * 1.9 && compSciMain.jonesY >= 84 * 1.9 && compSciMain.jonesY <= 280 * 1.8){ // right side grey area
    displayWarning();
  }
   if(compSciMain.jonesX <= 360 * 1.9 || compSciMain.jonesX >= 860 * 1.9 || compSciMain.jonesY >= 540 * 1.9 || compSciMain.jonesY <= 80 * 1.9){ // border
     displayWarning();
  }
}

void levelTwoHit(){//hit detection for the second level
   if(compSciMain.jonesX <= 400 * 1.8 || compSciMain.jonesX >= 780 * 1.8 || compSciMain.jonesY >= 510 * 1.8 || compSciMain.jonesY <= 175 * 1.9){ // border
     displayWarning();
  }
   if(compSciMain.jonesX >= 660 * 1.8 && compSciMain.jonesX <= 795 * 1.8 && compSciMain.jonesY >= 255 * 1.8 && compSciMain.jonesY <= 440 * 1.8){ // right red area
    displayWarning();
  }
   if(compSciMain.jonesX >= 390 * 1.8 && compSciMain.jonesX <= 585 * 1.8 && compSciMain.jonesY >= 275 * 1.8 && compSciMain.jonesY <= 435 * 1.8){ // area above start
    displayWarning();
  }
    if(compSciMain.jonesX >= 720 * 1.8 && compSciMain.jonesX <= 835 * 1.8 && compSciMain.jonesY >= 440 * 1.8 && compSciMain.jonesY <= 505 * 1.8){ // area to right of start
    displayWarning();
  }
}

void levelThreeHit(){//hit detection for third level
  if(compSciMain.jonesX <= 370 * 1.8 || compSciMain.jonesX >= 800 * 1.8 || compSciMain.jonesY >= 480 * 1.2 || compSciMain.jonesY <= 85 * 1.2){ // border
   displayWarning();
  }
   if(compSciMain.jonesX >= 385 * 1.8 && compSciMain.jonesX <= 705 * 1.8 && compSciMain.jonesY >= 175 * 1.2 && compSciMain.jonesY <= 260 * 1.2){ // area under character
   displayWarning();
   }
  if(compSciMain.jonesX >= 655 * 1.8 && compSciMain.jonesX <= 800 * 1.8 && compSciMain.jonesY >= 350 * 1.2 && compSciMain.jonesY <= 480 * 1.2){ // area right of gold
   displayWarning();
   }
  if(compSciMain.jonesX >= 490 * 1.8 && compSciMain.jonesX <= 555 * 1.8 && compSciMain.jonesY >= 350 * 1.2 && compSciMain.jonesY <= 370 * 1.2){ // small area near gold
   displayWarning();
   }
}

void levelFourHit(){// hit detetcion for fourth level
    if(compSciMain.jonesX <= 360 * 1.9 || compSciMain.jonesX >= 860 * 1.9 || compSciMain.jonesY >= 540 * 1.9 || compSciMain.jonesY <= 80 * 1.9){ // border
    displayWarning();
  }
   if(compSciMain.jonesX >= 520 * 1.9 && compSciMain.jonesX <= 835 * 1.9 && compSciMain.jonesY >= 70 * 1.9 && compSciMain.jonesY <= 230 * 1.8){ // middle gray area
    displayWarning();
 }
   if(compSciMain.jonesX >= 715 * 1.9 && compSciMain.jonesX <= 835 * 1.9 && compSciMain.jonesY >= 240 * 1.9 && compSciMain.jonesY <= 410 * 1.8){ // left gray area
    displayWarning();
 }
    if(compSciMain.jonesX >= 615 * 1.9 && compSciMain.jonesX <= 625 * 1.9 && compSciMain.jonesY >= 340 * 1.9 && compSciMain.jonesY <= 515 * 1.8){ // middle gray area
    displayWarning();
 }
}

void levelFiveHit(){//hit detection for final level
    if(compSciMain.jonesX <= 360 * 1.8 || compSciMain.jonesX >= 860 * 1.8 || compSciMain.jonesY >= 540 * 1.8 || compSciMain.jonesY <= 40 * 1.8){ // border
  displayWarning();
  }
   if(compSciMain.jonesX >= 385 * 1.8 && compSciMain.jonesX <= 835 * 1.8 && compSciMain.jonesY >= 70 * 1.8 && compSciMain.jonesY <= 195 * 1.8){ // top blue area
   displayWarning();
 }
   if(compSciMain.jonesX >= 705 * 1.8 && compSciMain.jonesX <= 835 * 1.8 && compSciMain.jonesY >= 200 * 1.8 && compSciMain.jonesY <= 330 * 1.8){ // middle right blue area
   displayWarning();
 }
    if(compSciMain.jonesX >= 775 * 1.8 && compSciMain.jonesX <= 835 * 1.8 && compSciMain.jonesY >= 330 * 1.8 && compSciMain.jonesY <= 515 * 1.8){ // bottom right blue area (near key)
   displayWarning();
 }
  if(compSciMain.jonesX >= 385 * 1.8 && compSciMain.jonesX <= 775 * 1.8 && compSciMain.jonesY >= 460 * 1.8){ // bottom blue area (below key)
   displayWarning();
 }
  if(compSciMain.jonesX >= 385 * 1.8 && compSciMain.jonesX <= 705 * 1.8 && compSciMain.jonesY >= 400 * 1.8){ // below start
   displayWarning();
 }
}

//These are the actions called from the block class
void moveLeft() {
  //checks to see what level to determine how far to move (they aren't scaled the same)
  if (level == 1){
    push();
    scale(.5);
    image(LevelOne, 4 *(width/5), height/5.5);
    compSciMain.jonesX = compSciMain.jonesX - 200;
    image(IndianaJonesLeft, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    
  } else if (level == 2) {
    push();
    scale(.5);
    image(LevelTwo, 4 *(width/5), height/5.5);
    compSciMain.jonesX = compSciMain.jonesX - 140;
    image(IndianaJonesLeft, compSciMain.jonesX, compSciMain.jonesY);
    pop();  
  
  } else if (level == 3) {
    push();
    scale(.5);
    image(LevelThree, 4 *(width/5), height/5.5);
    compSciMain.jonesX = compSciMain.jonesX - 200;
    image(IndianaJonesLeft, compSciMain.jonesX, compSciMain.jonesY);
    pop(); 
  }else if (level == 4) {
    push();
    scale(.5);
    image(LevelFour, 4 *(width/5), height/5.5);
    compSciMain.jonesX = compSciMain.jonesX - 180;
    image(IndianaJonesLeft, compSciMain.jonesX, compSciMain.jonesY);
    pop(); 
  }else if (level == 5) {
    push();
    scale(.5);
    image(LevelFive, 4 *(width/5), height/5.5);
    compSciMain.jonesX = compSciMain.jonesX - 140;
    image(IndianaJonesLeft, compSciMain.jonesX, compSciMain.jonesY);
    pop(); 
  }else if (level == 7) {
    fill(#FFFFFF);
    textSize(30);
    text("  Click the dotted lines to change the direction to where you want to go in \norder from your first move to its last. When you're ready to run it, click play.\n                            Practice moving around the empty space.", width/3+90, height/6);
    compSciMain.jonesX = compSciMain.jonesX - 200;
    image(IndianaJonesLeft, compSciMain.jonesX, compSciMain.jonesY);
  }
}

void moveRight() {
  //checks to see what level to determine how far to move (they aren't scaled the same)
  if(level == 1){
    compSciMain.jonesX = compSciMain.jonesX + 200;
    push();
    scale(.5);
    image(LevelOne, 4 *(width/5), height/5.5);
    image(IndianaJonesRight, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    
  } else if (level == 2) {
    compSciMain.jonesX = compSciMain.jonesX + 175;
    push();
    scale(.5);
    image(LevelTwo, 4 *(width/5), height/5.5);
    image(IndianaJonesRight, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    
  } else if (level == 3) {
    compSciMain.jonesX = compSciMain.jonesX + 170;
    push();
    scale(.5);
    image(LevelThree, 4 *(width/5), height/5.5);
    image(IndianaJonesRight, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    
  } else if (level == 4) {
    compSciMain.jonesX = compSciMain.jonesX + 200;
    push();
    scale(.5);
    image(LevelFour, 4 *(width/5), height/5.5);
    image(IndianaJonesRight, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    
  } else if (level == 5) {
    compSciMain.jonesX = compSciMain.jonesX + 150;
    push();
    scale(.5);
    image(LevelFive, 4 *(width/5), height/5.5);
    image(IndianaJonesRight, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    
  }else if (level == 7) {
    fill(#FFFFFF);
    textSize(30);
    text("  Click the dotted lines to change the direction to where you want to go in \norder from your first move to its last. When you're ready to run it, click play.\n                            Practice moving around the empty space.", width/3+90, height/6);
    compSciMain.jonesX = compSciMain.jonesX + 200;
    image(IndianaJonesRight, compSciMain.jonesX, compSciMain.jonesY);
  }
}

void moveForwards() {
  //checks to see what level to determine how far to move (they aren't scaled the same)
  if(level == 1){
    push();
    scale(.5);
    image(LevelOne, 4 *(width/5), height/5.5);
    compSciMain.jonesY = compSciMain.jonesY - 175;
    image(IndianaJones, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    
  } else if (level == 2) {
    compSciMain.jonesY = compSciMain.jonesY - 240;
    push();
    scale(.5);
    image(LevelTwo, 4 *(width/5), height/5.5);
    image(IndianaJonesRight, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    
  } else if (level == 3) {
    compSciMain.jonesY = compSciMain.jonesY - 175;
    push();
    scale(.5);
    image(LevelThree, 4 *(width/5), height/5.5);
    image(IndianaJonesRight, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    
  } else if (level == 4) {
    compSciMain.jonesY = compSciMain.jonesY - 165;
    push();
    scale(.5);
    image(LevelFour, 4 *(width/5), height/5.5);
    image(IndianaJonesRight, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    
  } else if (level == 5) {
    compSciMain.jonesY = compSciMain.jonesY - 240;
    push();
    scale(.5);
    image(LevelFive, 4 *(width/5), height/5.5);
    image(IndianaJonesRight, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    
  }else if (level == 7) {
    fill(#FFFFFF);
    textSize(30);
    text("  Click the dotted lines to change the direction to where you want to go in \norder from your first move to its last. When you're ready to run it, click play.\n                            Practice moving around the empty space.", width/3+90, height/6);
    compSciMain.jonesY = compSciMain.jonesY - 175;
    image(IndianaJones, compSciMain.jonesX, compSciMain.jonesY);
  }
}

void moveBackwards() {
  //checks to see what level to determine how far to move (they aren't scaled the same)
  if(level == 1){
    push();
    scale(.5);
    image(LevelOne, 4 *(width/5),  height/5.5);
    compSciMain.jonesY = compSciMain.jonesY + 175;
    image(IndianaJones, compSciMain.jonesX, compSciMain.jonesY);
    pop();

  } else if (level == 2) {
    push();
    scale(.5);
    image(LevelTwo, 4 *(width/5),  height/5.5);
    compSciMain.jonesY = compSciMain.jonesY + 175;
    image(IndianaJones, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    
  
  } else if (level == 3) {
    push();
    scale(.5);
    image(LevelThree, 4 *(width/5),  height/5.5);
    compSciMain.jonesY = compSciMain.jonesY + 195;
    image(IndianaJones, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    
  
  } else if (level == 4) {
    push();
    scale(.5);
    image(LevelFour, 4 *(width/5),  height/5.5);
    compSciMain.jonesY = compSciMain.jonesY + 175;
    image(IndianaJones, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    
  
  } else if (level == 5) {
    push();
    scale(.5);
    image(LevelFive, 4 *(width/5),  height/5.5);
    compSciMain.jonesY = compSciMain.jonesY + 165;
    image(IndianaJones, compSciMain.jonesX, compSciMain.jonesY);
    pop();
    
  
  }else if (level == 7) {
    fill(#FFFFFF);
    textSize(100);
    text("  Click the dotted lines to change the direction to where you want to go in \norder from your first move to its last. When you're ready to run it, click play.\n                            Practice moving around the empty space.", width/3+90, height/6);
    compSciMain.jonesY = compSciMain.jonesY + 175;
    image(IndianaJones, compSciMain.jonesX, compSciMain.jonesY);
  }
}

void detectWin() {//detects if you are on the winning square at the end of the sequence
  if(level == 1 && compSciMain.jonesX >= 655 * 1.9 && compSciMain.jonesX <= 800 * 1.9 && compSciMain.jonesY >= 80 * 1.9 && compSciMain.jonesY <= 160 * 1.9){ // level 1 finish
  fill(#4a9e3a);
  textSize(width/25);
  text("Hooray! You found the treasure!", width/2.75, height/1.01);
  levelTwoSetup = true;//allows the second image to be drawn
  resetBlocks();//resets what the blocks say
  level++;//moves to level two
  saveProgress(level);//saves the current level + 1 to catch you up to speed when you finish the level
 }
 if(level == 2 && compSciMain.jonesX >= 860 && compSciMain.jonesX <= 920 && compSciMain.jonesY >= 330 && compSciMain.jonesY <= 390){
   fill(#4a9e3a);
   textSize(width/25);
   text("Hooray! You found the treasure!", width/2.75, height/1.01);
   levelThreeSetup = true;
   resetBlocks();
   level++;
   saveProgress(level);
 }
  if(level == 3 && compSciMain.jonesX >= 570 * 1.9 && compSciMain.jonesX <= 590 * 1.9 && compSciMain.jonesY >= 350 * 1.9 && compSciMain.jonesY <= 390 * 1.9){ // this detection method doesnèt work, skip for presentation
  fill(#4a9e3a);
  textSize(width/25);
  text("Hooray! You found the treasure!", width/2.75, height/1.01);
  levelFourSetup = true;
  resetBlocks();
  level++;
  saveProgress(level);//saves the current level + 1 to catch you up to speed when you finish the level
 }
  if(level == 4 && compSciMain.jonesX >= 760 && compSciMain.jonesX <= 800 && compSciMain.jonesY >= 180 && compSciMain.jonesY <= 220){ // level 4 finish
  fill(#4a9e3a);
  textSize(width/25);
  text("Hooray! You found the treasure!", width/2.75, height/1.01);
  levelFiveSetup = true;
  resetBlocks();
  level++;
  saveProgress(level);//saves the current level + 1 to catch you up to speed when you finish the level
 }
  println(compSciMain.jonesX + " " + compSciMain.jonesY);
  fill(33);
  rect(700, 380, 75, 75);
  if(level == 5 && compSciMain.jonesX >= 700 * 1.9 && compSciMain.jonesX <= 775 * 1.9 && compSciMain.jonesY >= 380 * 1.9 && compSciMain.jonesY <= 555 * 1.9){ // this one shares the same problem with level three, the base coords stay the same during the detection.
  fill(#4a9e3a);
  textSize(width/25);
  text("Hooray! You found the treasure!", width/2.75, height/1.01);
  resetBlocks();
  level++;
  saveProgress(level);//saves the current level + 1 to catch you up to speed when you finish the level
 }
}

void displayWarning() {//is called when the player is out of bounds, will only show when mouse is held down
//the positional resets pull the char back when the mouse button is released
  if(level == 1){
  compSciMain.jonesX = 990;
  compSciMain.jonesY = 870;
 }
  if(level == 2){
  compSciMain.jonesX = 820;
  compSciMain.jonesY = 840;
 }
 if(level == 3){
  compSciMain.jonesX = 810;
  compSciMain.jonesY = 150;
 }
 if(level == 4){
  compSciMain.jonesX = 1500;
  compSciMain.jonesY = 860;
 }
 if(level == 5){
  compSciMain.jonesX = 800;
  compSciMain.jonesY = 620;
 }
 fill(#af2020); 
 textSize(width/25);
 text("Nice Try! - Keep Steven safe", width/2.75, height/1.01);
}
