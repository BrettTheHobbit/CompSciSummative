/* JC Abanto, Brett Hobbs, Shanif Syed, Nehal Pamma || ICS4U1 Final Summative 
The game is designed to teach younger children about logic and creating small algorithms to solve problems within our game.
The goal of the game is to get the adventurer to the treasure by guiding the adventurer using logic blocks that dictate his movement.
*/
int xPos = 0;
int yPos = 0;
logic logicalBlocks = new logic(xPos, yPos);
Block blockOne = new Block(xPos, yPos);
void setup() {
  fullScreen();
  

}

void draw() {
  background(33);
  
  logicalBlocks.drawLogicScreen();
  blockOne.drawBlock();
}

void mouseClicked() {
  blockOne.updateText();
}
