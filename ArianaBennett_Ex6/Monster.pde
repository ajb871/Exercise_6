class Monster {
  float wanderX;
  float wanderX2;
  float wanderY;
  int x;
  int y;
  Monster() {
    //constructor takes x & y parameters
    /*
    x = xpos;
    y = ypos;
    */
  }
  //center x,y is 450,450
  void display(int x, int y, color color1, color color2, color color3) {
    //each value has a certain +x and +y value based on distance from center of monster
    strokeWeight(8);
    //neck
    stroke(40, 70, 20);
    fill(color2);
    rect(x - 50, y, 100, 700);
    strokeWeight(30);
    stroke(color3);
    line(x - 50, y + 250, x + 50, y + 250);
    line(x - 50, y + 350, x + 50, y + 350);
    line(x - 50, y + 450, x + 50, y + 450);

    //head
    stroke(100, 10, 6);
    strokeWeight(8);
    fill(170, 20, 10);
    triangle(x - 300, y - 150, x + 300, y - 150, x, y + 200);

    stroke(130, 70, 10);
    fill(color1);
    triangle(x - 300, y - 150, x + 300, y - 150, x, y + 150);

    //eyes
    stroke(0);
    fill(255);
    ellipse(x - 250, y - 150, 220, 220);
    ellipse(x + 250, y - 150, 220, 220);

    //pupils
    stroke(70, 30, 255);
    fill(0);
    ellipse(x - 250, y - 150, 70, 70);
    //ellipse(wanderX, wanderY, 70, 70);
    fill(70, 30, 255);
    stroke(0);
    ellipse(x + 250, y - 150, 30, 30);
    //ellipse(wanderX2, wanderY, 30, 30);

    //eye light
    noStroke();
    fill(255);
    ellipse(wanderX + 15, wanderY - 20, 20, 20);
    ellipse(wanderX2 - 10, wanderY - 20, 20, 20);

    //nose
    stroke(0);
    line(x - 30, y + 30, x - 15, y + 70);
    line(x +25, y + 30, x + 10, y + 90);

    //TEETH
    fill(255);
    //first
    triangle(x - 25, y + 125, x - 90, y + 60, x - 110, y + 170); 
    triangle(x + 25, y + 125, x + 90, y + 60, x + 110, y + 170); 
    //second
    triangle(x - 100, y + 50, x - 165, y - 15, x - 170, y + 150);
    triangle(x + 100, y + 50, x + 165, y - 15, x + 170, y + 150);

    //eyebrows
    strokeWeight(40);
    line(x - 150, y - 210, x - 320, y - 300);
    line(x + 150, y - 210, x + 320, y - 300);

    //antennaes 
    stroke(100, 90, 10);
    strokeWeight(8);
    fill(color3);
    rect(x + 60, y - 360, 30, 210);
    rect(x - 90, y - 360, 30, 210);

    stroke(100, 10, 70);
    fill(232, 32, 152);
    ellipse(x + 75, y - 360, 60, 30);
    ellipse(x - 75, y - 360, 60, 30);
  }
  /*
  void update() { //had trouble controlling eye movement in draw() since eye position is based on int x variable, 
  //which is defined in function (display) and therefore not accesible by this function update()
  //i couldn't find a solution around this problem
    wanderX = map(mouseX, 0, 1600, x - 275, x - 195);
    wanderX2 = map(mouseX, 0, 1600, x + 175, x + 315);
    wanderY = map(mouseY, 0, 900, y - 185, y - 115);
  }
  */
  void move(int a, int b) { //move function for mons, not used in final exercise
    x += a;
    y += b;
  }
}