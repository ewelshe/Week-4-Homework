int counter = 0;
size(400, 400);
background(255);

for (int x = 0; x <= width; x += 10) {
  for (int y = 0; y <= height; y += 10) {
    float dx = 7*(1-2.0*x/width);
    float dy = 7*(1-2.0*y/height);
    line(x, y, x+dx, y+dy);

counter=counter +1;
    println(counter);


//if(int counter=y;{ 

}
}


//To find out how many times the line gets called I added a counter and println said the lines were drawn 1681 times.
