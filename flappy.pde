float[] values;
int index;

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

  values[index] = maybeRandomHeight();
  index = index + 1;
  if (index >= values.length) {
    index = 0;
  }

  for (int i = 0; i < values.length; ++i) {
    int realIndex = index + i;
    if (realIndex >= values.length) {
      realIndex -= values.length;
    }
    line(i*3, height-values[realIndex], i*3, height);
println(height/3);
//a. the highest value you observe for realIndex is 83. I divided height/3 in println because height is divided by 3 everytime the line is drawn 
}
}
