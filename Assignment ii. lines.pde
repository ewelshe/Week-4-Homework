int counter = 0;
size(400, 400);
background(255);

for (int x = 0; x <= width; x += 10) {
  for (int y = 0; y <= height; y += 10) {
    float dx = 7*(1-2.0*x/width);
    float dy = 7*(1-2.0*y/height);
    line(x, y, x+dx, y+dy);


if (x==x + dx){
  counter = counter + 1;
  println(counter);
}

//counter=counter +1;
   // println(counter);



}
}
//To find out how many times the line gets called I added a counter and println said the lines were drawn 1681 times.
// I then added an if statement with a counter. when y==y+dy those are horizontal lines, now the counter counts how many those are and it is 41.
// To see if the lines are vertical you just have to change the x==x+dx and that gives you the count of the vertical lines which is also 41. 


