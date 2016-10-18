Monster [] kids;
Monster josh;
int x = 400;
int y = 500;

void setup() {
  size(1600, 300);
  background(120);
  //josh = new Monster(x, y);
  kids = new Monster[10];
  //I created an array of monsters so I could draw several in a line
  for (int i = 0; i < 10; i ++) {
    kids[i] = new Monster();
  }
}

void draw() {
  //scales down monster size so I can fit more per screen
  scale(.25);
  background(120);
  //random colors in certain shades
  color color1 = color(random(80, 200), 10, random(90, 200));
  color color2 = color(10, random(200, 255), random(80, 100));
  color color3 = color(random(150, 240), random(140, 260), random(30, 90));
  /*
  josh.update();
   josh.display(color1, color2, color3);
   josh.x += 800;
   */
  y = int(random(500, 650));
  //here, i try to make a line of different monsters each 800 x apart, using the array kids[]
  for (int kid = 0; kid < 10; kid += 1) {
    for (int i = 400; i < 6400; i += 800) {
      kids[kid].display(i, y, color1, color2, color3);
      //kids[kid].update();
    }
  }
}