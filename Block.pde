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

  //The block needs click detection and to be drawn, it also needs a variable that will save the text.
  void drawBlock() {//all of this just draws the UI on the left side of the screen
   ellipseMode(CENTER);//personal preference, if you want to change it you can later
   fill(#7b9095);
   rect(0, 0, width/3, height); 
   fill(#6a9aa6);//changes the colour for each ten lines
   rect(this.blockX, this.blockY,width/3,height/15);
   fill(#ffffff);//the text for the blocks \/  \/
   rectMode(CENTER);//so i can fit the text on the screen
   textSize(width/25);
   text(this.blockText, this.blockX + 100, this.blockY + 20 + height/30);
   rectMode(CORNER);
   fill(#0ca716);//fills the green for the start button
   rect(0, 11*(height/15), width/3, height/4);//green rectangle
   ellipse(width/3.15, 12.8 * height/15, 200, 200);//play circle
   fill(#05e613);
   stroke(#14d721);
   //all of these are basically UI elements that bear no meaning on the actual logic of the game
   textSize(width/10);   
   text("Play", (width/15) - width/15, 13.5 * (height/15));//will write out the text after updating it
   strokeWeight(5);
   triangle((width/3.15) - 50, 12.4 * height/15, (width/3.15) - 50, 13.2 * height/15, (width/3.15) + 50, 12.8 * height/15  );
   noStroke();//play triangle
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
