class droppedItemshield extends GameObjects {
  int type;
  int timer;
  droppedItemshield(float x, float y, int rx, int ry) {
    hp = 1453;
    loc = new PVector(x, y);
    vel = new PVector(0, 0);
    size = 20;
    roomX = rx;
    roomY = ry;
    timer = 0;
  }

  void show() {
    stroke(0);
    fill(darkBlue);
    circle(loc.x, loc.y, size);
    imageMode(CENTER);
    image(shield, loc.x, loc.y, 100, 100);
    imageMode(CORNER);
  }

  void act() {
     image(shieldcount, 200, 300, 120, 70);
    timer++;
    if (timer > 500) {
      hp = 0;
      timer = 0;
    }

    if (dist(loc.x, loc.y, myHero.loc.x, myHero.loc.y)< size/2 + myHero.size/2) {
      
      myHero.immune = true;
      hp = 0;
    }
  }
}
