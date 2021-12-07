class Message extends GameObjects {
  int coins;
  int lifetime;
  Message (float locx, float locy, int _coins) {
    loc = new PVector(locx, locy);
    coins = _coins;
    lifetime = 0;
    hp = 10;
  }

  void show() {
    rect(134, 245, 45, 234);
    fill(white);
    text("coins", loc.x, loc.y);
    println("wooooo");
  }
  void act() {
    lifetime++;
    //loc.y++;
    //if (lifetime > 30) hp = 0;
  }
}
