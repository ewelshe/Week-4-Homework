
size(400, 400);
background(255);

for (int x = 0; x <= width; x += 10) {
  for (int y = 0; y <= height; y += 10) {
    float dx = 7*(1-2.0*x/width);
    float dy = 7*(1-2.0*y/height);
    line(x, y, x+dx, y+dy);

//println(x);


//if(int counter=y;{
 // println (y);

}
}


//To find out how many times the line gets called I added a counter to the x variable because 
//x needs to get called everytime there is a line being drawn. After i used println(x), it says it was called 400 times.
//To find out how many lines are perfectly horizontal, I  need to add an if statement around my counter for the y coordinates
//
