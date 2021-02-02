/*
this input/output file is used to read and write from files to determine progress.
At this moment it is unclear on how the save files will be read from.
*/

import java.io.*;




  


void saveProgress(int level) {
  

  try {
    FileWriter fw = new FileWriter("levelSaveFile.txt");
    BufferedWriter bw = new BufferedWriter(fw);
    bw.write(level);
    bw.close();
  } catch (IOException e) {
  } finally {
  }
}

int retrieveProgress() {
  
  try {
    BufferedReader br = new BufferedReader(new FileReader("levelSaveFile.txt"));
    String readLine= br.readLine();
    br.close();
    if(readLine != null) {
      return Integer.parseInt(readLine);
    } else {
     return  1; 
    }
  } catch (IOException e) {
  } finally {
  }
  println("Could not find save file");
  return 1;//couldn't find save
}
    
