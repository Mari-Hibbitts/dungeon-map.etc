//class splitEnemy extends Enemy {
//  splitEnemy(int hp, int x, int y, int locx, int locy) {
//    super(hp, 100, x, y);
//    loc = new PVector (locx, locy);
//  }

//  void show() {
//stroke(0);
//    strokeWeight(2);
//    fill(darkBlue);
//    circle(loc.x, loc.y, size);
//    fill(black);
//    textSize(20);
//    text(hp, loc.x, loc.y);
//  }
//  void act() {
//    super.act();
//       int i = 0;
//    while (i < myObjects.size()) {
//      GameObjects obj = myObjects.get(i);
//      if (obj instanceof Bullet) {
//        float d = dist(obj.loc.x, obj.loc.y, loc.x, loc.y);
//        if (d <= size/2 + obj.size/2) {
//          hp = hp - int(obj.vel.mag());
//          myObjects.add(new splitEnemy(100,x, y, loc.x,loc.y));

//        }
//      }

//      i++;
//    }
//  }

//}
