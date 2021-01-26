/* Brett Hobbs ICS4U1 Sierpinski Triangle Recursion Optional Assignment
The way this works is that at every return the triangle draw will be called three times all with differing inputs, going untilthe index reaches zero.
*/

void setup() {
  size(500, 500);
  fill(#ffffff);
  triangle(width/2, 0, width, height, 0 , height);
  fill(#000000);
  recursiveTriangle(10, width/2, 0, width, height, 0, height);
}

void recursiveTriangle(int N, int x1, int y1, int x2, int y2, int x3, int y3) {
  if(N == 0) {//this is the base case that defualts you out
    println("The triangle has been drawn"); 
  } else {
    println(N);
    push();
    rotate(PI);
    translate(-width, -height);
    scale(0.5);
    triangle(x1,y1,x2,y2,x3,y3);
    pop();
     //recursiveTriangle(N - 1, x1, y1*2, x2, y2*2, x3, y3*2);
     recursiveTriangle(N - 1, x1/2, y1/2, x2/2, y2/2, x3/2, y3/2);
    // recursiveTriangle(N - 1, x1/2, y1/2, x2/2, y2/2, x3/2, y3/2);
  }
}
