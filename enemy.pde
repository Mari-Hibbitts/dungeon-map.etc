class Enemy extends GameObjects {

  Enemy() {
    loc = new PVector (width/2, height/2);
    vel = new PVector (0, 0 );
    hp = 100;
    roomX = 1;
    roomY = 1;
    size = 45;
  }

  void show() {

    stroke(0);
    strokeWeight(2);
    fill(red);
    ellipse(loc.x, loc.y, size, size);
    fill(black);
    textSize(20);
    text(hp, loc.x, loc.y);
  }

  void act() {
    super.act();
    int i = 0;
    while (i < myObjects.size()) {
      GameObjects obj = myObjects.get(i);
      if (obj instanceof Bullet) {
        float d = dist(obj.loc.x, obj.loc.y, loc.x, loc.y);
        if (d <= size/2 + obj.size/2) {
          hp = hp - int(obj.vel.mag());
          obj.hp = 0;
        }
      }

      i++;
    }
  }
}
