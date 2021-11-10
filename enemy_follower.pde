class Follower extends Enemy{
Follower(int x, int y){
super(176,50,x, y);
}

void show(){
 stroke(0);
    strokeWeight(2);
    fill(white);
    circle(loc.x, loc.y, size);
    fill(black);
    textSize(20);
    text(hp, loc.x, loc.y);

}
 void act(){
    super.act();
   if (dist(myHero.loc.x, myHero.loc.y, loc.x, loc.y)< 100){
 vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
 vel.setMag(1);
 }
 }
}
