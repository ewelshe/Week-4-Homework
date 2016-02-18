int[] x;
int[] count;

void setup() {
  size(500, 500);

  x = new int[height];
  count = new int[height];
  for (int i = 0; i < height; i++) {
    count[i] = 30;
  }
}

void draw() {
  background(255);

  for (int i = 0; i < height; i++) {
    if (count[i] < 30) {
      if (count[i] < 15) {
        line(x[i], i, x[i] + count[i]*10, i);
      } else {
        line(x[i] + (count[i] - 15)*10, i, x[i] + 150, i);
      }
    }
    count[i]++;
  }

  if (mousePressed) {
    x[mouseY] = mouseX;
    count[mouseY] = 0;

println();

}
}
//a. the highest point value that any slot of the count array could go up to is 499 because if you put count into the println it says 499. Also if you go outside of the canvas the code crashes. 
//b. the legnth of the 5th drawn segment is 35 because you have to add the y coordinates. i is the 5th position and 30 is the legnth. so it is 35
