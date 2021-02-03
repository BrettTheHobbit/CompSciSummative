/*
this input/output file is used to read and write from files to determine progress.
At this moment it is unclear on how the save files will be read from.
*/

import java.io.*;//imports file writing

void saveProgress(int level) {
  
  try {
    FileWriter fw = new FileWriter("levelSaveFile.txt");//writes to the file in folder
    BufferedWriter bw = new BufferedWriter(fw);
    bw.write(level);
    bw.close();
  } catch (IOException e) {
  } finally {
  }
}

int retrieveProgress() {
  
  try {
    BufferedReader br = new BufferedReader(new FileReader("levelSaveFile.txt"));//reads from file in folder
    String readLine= br.readLine();
    br.close();
    if(readLine != null) {//wont read if empty (doesnt work)
      return Integer.parseInt(readLine);//returns the stage that was saved
    } else {
     return  1; 
    }
  } catch (IOException e) {//catches expections
  }
  println("Could not find save file");
  return 1;//couldn't find save
}
    
