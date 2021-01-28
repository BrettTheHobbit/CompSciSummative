/*
this input/output file is used to read and write from files to determine progress.
At this moment it is unclear on how the save files will be read from.
*/

import java.io.*;




  


void saveProgress(int level) {
  

  try {
    FileWriter fw = new FileWriter("savedLevel.txt");
    BufferedWriter bw = new BufferedWriter(fw);
    bw.write(level);
    bw.close();
  } catch (IOException e) {
  } finally {
  }
}

void retrieveProgress() {
  
  try {
    BufferedReader br = new BufferedReader(new FileReader("savedLevel.txt"));
    savedLevel = Integer.parseInt(br.readLine());
    br.close();
  } catch (IOException e) {
  } finally {
  }
}
    
