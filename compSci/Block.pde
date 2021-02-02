/*
This is the block class, holding all of the methods that will eventually affect the action class. things like directional movement and other activity methods are found here
*/

class Block { //The block class is used to instantiate 10 blocks that when clicked will change their text and therefore the effect
   int blockX;
   int blockY;//used for positional drawing
   int indexBlock = 0;//used so we can tell which one should be called first
   String blockText = "________";//what will be written upon the screen
   Block(int bX, int bY) {//constructor
    this.blockX = bX;
    this.blockY = bY;
  }
  void runLine(String textBlock) {
    
    switch(textBlock) {
      case "________":
        if (blockOne.blockText.equals("________")) {
          levelOneSetup = true;
        }
        break;//this case is used as a reset from the other ones.
      case "Left":
        //this is where the action class actually moves the physical player
        moveLeft();
        break;
      case "Right": 
        //moves player x ++
        moveRight();
        break;
      case "Forward":
        //moves playerY --
        moveForwards();
        break;
      case "Back":
        //moves playerY ++
        moveBackwards();
        break;
    }
  }
  
  void drawBlock() {
   fill(#6a9aa6);//These two lines are the blocks.
   rect(this.blockX, this.blockY,width/3,height/15);
   fill(#ffffff);//the text for the blocks \/  \/
   rectMode(CENTER);//so i can fit the text on the screen
   textSize(width/25);
   text(this.blockText, this.blockX + 80, this.blockY + 10 + height/30);
   rectMode(CORNER);
  }
  
  void updateText() {//updates the text when the mouse button is clicked. Assumes at this point the player has already clicked the box so add detection somewhere else lol.
    if(mouseX >= this.blockX && mouseX <= (this.blockX + width/3) && mouseY >= this.blockY && mouseY <= (this.blockY + height/15)) { 
      //the above conditional checks if you clicked inside of the box
      indexBlock++;
      if(this.indexBlock == 5) {
        indexBlock = 0;
      }
      switch(this.indexBlock) {
        case 0:
           this.blockText = "________";
           break;
        case 1:
         this.blockText = "Left";
         break;
       case 2:
         this.blockText = "Right";
         break;
       case 3:
         this.blockText = "Forward";
         break;
       case 4:
         this.blockText = "Back";
         break;
      }
    }
  }
}
