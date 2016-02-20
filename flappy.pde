
float[] values;
int index;
int count = 0;
boolean counted = false;

void setup() {
  size(600, 250);
  background(0);

  values = new float[width/3];
  index = 0;
}

float maybeRandomHeight() {
  if (random(10) < 1) {
    return random(height/3, 2*height/3);
  } else {
    return 0;
  }
}

void draw() {
  background(255);
  if (millis() >= 10000 && counted == false) {
    println(count);
    counted = true;
  }
  values[index] = maybeRandomHeight();
  index = index + 1;
  if (index >= values.length) {
    index = 0;
  count++;
  println("reset");
}


  for (int i = 0; i < values.length; ++i) {
    int realIndex = index + i;
    if (realIndex >= values.length) {
      realIndex -= values.length;
    }
    line(i*3, height-values[realIndex], i*3, height);
  }
}
//a. The highest possible value you observe for realIndex is 199
// The lowest possible value is 0
//b. The code resets 2 times 

//I set a time to 10 seconds which is 10,000 milliseconds using the millis function 
//I then had to ask a boolean count to make the statement run only once using true/false. 
// False to 10 seconds which is the end time then the rest of it is true so we dont calculate that after using &&
//We then have to add a counter for how many times the code resets to 0 and the code then prints reset twice because thats how many times the lines resets back to 0
// println(count);  count++;   println("reset”) 
