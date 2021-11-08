class Bullet extends GameObjects {
  color c;
  float s;
  PVector aim;
  int timer;

  Bullet(PVector _aim, color _c, float _s) {
    super();
    timer = 90;
    c = _c;
    aim = _aim;
    s = _s;
    loc = new PVector (myHero.loc.x, myHero.loc.y);
    vel = _aim;
    vel.setMag(5);
  }

  void show() {
    fill(c);
    circle(loc.x, loc.y, s);
  }

  void act() {
     loc.add(vel);  
    timer--;
    if (timer == 0) {
      hp = 0;
    }
    //collision (different from gameobject)
if (loc.x > 700) hp = 0;
if (loc.x < 103)hp= 0;
if (loc.y > 513) hp = 0;
if (loc.y < 85)hp = 0;
  }
}
