
final int GRID_SIZE = 10;
final float GRID_PADDING = 50;

void setup() {
  size(500, 500);
  mouseX = mouseY = 250;
}

float gridToCoordinates(int input) {
  return GRID_PADDING+input*(500 - 2*GRID_PADDING)/(GRID_SIZE-1);
}

void draw() {
  background(0);

  noStroke();
  fill(255);
  for (int i = 0; i < GRID_SIZE; ++i) {
    for (int j = 0; j < GRID_SIZE; ++j) {
      float distance = sqrt(pow(mouseX-gridToCoordinates(i), 2) + pow(mouseY-gridToCoordinates(j), 2));
      float ellipseSize = min(100, 1000.0/distance);
      ellipse(gridToCoordinates(i), gridToCoordinates(j), ellipseSize, ellipseSize);
    }
  }
  
}

//I first tried to change the first call to the ellipse size under the second float in the draw commmand. 
//I changed the 1000 to 800 because I believe that is the maxiumum size of the cirlce perhapse. It didnt affect
// the circle touching other cirlces. 
