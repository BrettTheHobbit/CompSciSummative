class logic {
  int playerX;
  int playerY;
  logic(int x, int y) {//consturctor
    this.playerX = X;
    this.playerY = y;
  }
  
  void drawLogicScreen() {
    ellipseMode(CENTER);
   fill(#7b9095);
   rect(0, 0, width/3, height); 
   fill(#6a9aa6);//changes the colour for each ten lines
   for(int i = 0; i < 10; i ++) {
     rect(0, 0 + (i * height/15), width/3, height/15);
   }
   fill(#0ca716);//fills the green for the start button
   rect(0, 11*(height/15), width/3, height/4);
   ellipse(width/3.15, 12.8 * height/15, 200, 200);
   fill(#05e613);
   stroke(#14d721);
   strokeWeight(5);
   textSize(width/10);
   text("Play", (width/15) - width/15, 13.5 * (height/15));
   triangle((width/3.15) - 50, 12.4 * height/15, (width/3.15) - 50, 13.2 * height/15, (width/3.15) + 50, 12.8 * height/15  );
   noStroke();
  }
  
  void line(String logicText) {//takes the input from the main file, the input being what the logic block says on it. the effect changes based on what the logic block says
    switch(logicText) {
      case "Left": 
      left();
        break;//this case represents when the player must move left and so they move left.
      case "Right":
      right();
        break;//this case is where the player moves right 
       case "Back":
       back();
         break;//this is when the player's y moves downward
       case "Forward":
       forward();
         break;//this moves the player y forward (decreases value)
       }
    }
    //THESE FOUR CLASSES SHOULD PROBABLY BE MOVED INTO THE ACTION CLASS SO THAT THE PARAMETERS IN LOGIC CAN BE MOVED THERE AS WELL
    void left() {
      this.playerX--;
      //needs to move the player left, by amount of pixels
    }
    
    void right() {
      this.playerX++;//can be changed to be animated late
      //needs to move the player right by adding x pixels
    }
    
    void back() {
      this.playerY++;
      //moves the y coord of the player 
    }
    
    void forward() {
      this.playerY--;
      //moves the y coord and decreases it to move it up
    }
}
