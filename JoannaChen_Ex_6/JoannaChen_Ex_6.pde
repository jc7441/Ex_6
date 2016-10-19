class Monster {
  int x, y;
  color eyes;
  color horns;

  Monster(int xLoc, int yLoc) {
    x = xLoc;
    y = yLoc;
    eyes = color(random(255), random(255), random(255));
    horns = color(180, 182, 184);
  }

  void display() {
    // legs
    fill(209, 113, 117);
    quad(100+x, 575+y, 125+x, 454+y, 160+x, 478+y, 170+x, 575+y); // left
    quad(220+x, 575+y, 235+x, 478+y, 275+x, 454+y, 290+x, 575+y); // right
    // body
    fill(41, 20, 3);
    ellipse(200+x, 360+y, 220, 250); // shell
    // abdomen
    fill(209, 113, 117);
    ellipse(200+x, 360+y, 150, 180);
    noFill();
    arc(200+x, 300+y, 109, 20, 0, PI);
    arc(200+x, 330+y, 139, 20, 0, PI);
    arc(200+x, 360+y, 147, 20, 0, PI);
    arc(200+x, 390+y, 139, 20, 0, PI);
    arc(200+x, 420+y, 109, 20, 0, PI);
    fill(209, 113, 117);
    ellipse(200+x, 200+y, 140, 170); // head
    noStroke();
    fill(157, 67, 67);
    ellipse(194+x, 208+y, 8, 8);
    ellipse(205+x, 208+y, 8, 8);
    fill(122, 67, 67);
    rect(160+x, 162+y, 34, 3); // left eyebrow
    rect(205+x, 162+y, 34, 3); // right eyebrow
    fill(255);
    ellipse(180+x, 180+y, 30, 20); // left eye
    ellipse(220+x, 180+y, 30, 20); // right eye
    //fill(127, 4, 222);
    fill(eyes);
    ellipse(180+x, 183+y, 20, 20); // left eye
    ellipse(220+x, 183+y, 20, 20); // right eye
    ellipseMode(CENTER); // left pupil
    fill(0);
    ellipse(180+x, 183+y, 12, 12); 
    ellipseMode(CENTER); // right pupil
    fill(0);
    ellipse(220+x, 183+y, 12, 12);
    fill(73, 20, 3);
    stroke(100, 0, 0);
    arc(200+x, 225+y, 90, 80, 0, PI); // mouth
    // teeth
    fill(225);
    triangle(165+x, 225+y, 170+x, 265+y, 175+x, 225+y); // left fang
    triangle(180+x, 225+y, 190+x, 245+y, 200+x, 225+y);
    triangle(200+x, 225+y, 210+x, 245+y, 220+x, 225+y);
    triangle(225+x, 225+y, 230+x, 265+y, 235+x, 225+y); // right fang
    // antena
    fill(horns);
    line(160+x, 128+y, 120+x, 70+y); // left
    triangle(110+x, 80+y, 107+x, 49+y, 130+x, 60+y);
    line(235+x, 128+y, 285+x, 70+y); // right
    triangle(275+x, 65+y, 300+x, 58+y, 296+x, 85+y);
    // arms
    fill(209, 113, 117);
    //rotate(radians(-20));
    ellipse(105+x, 280+y, 60, 150); // left
    //rotate(radians(50));
    ellipse(295+x, 280+y, 60, 150); // right
  }
}
//inheritance
class Boss extends Monster {
  Boss(int xLoc, int yLoc) {
    super(xLoc, yLoc);
    this.horns = color(244, 194, 64);
  }
} //class closer

Monster steve;
Monster jade;
Monster sam;
Monster john;
Monster rosie;
Boss lady;

void setup() {
  size(850, 700);
  steve = new Monster(-50, -50);
  jade = new Monster(210, -50);
  sam = new Monster(470, -50);
  john = new Monster(0, 100);
  rosie = new Monster(460, 100);
  lady = new Boss(230, 100);
}

void draw() {
  background(255);
  steve.display();
   jade.display();
   john.display();
   sam.display();
   john.display();
   rosie.display();
   lady.display();
}