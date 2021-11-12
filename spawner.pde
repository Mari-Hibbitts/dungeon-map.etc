class Spawner extends Enemy{
int timer;
Spawner(int x, int y){
super(300,50,x, y);
timer = 0;
}

void show(){
super.show();
fill(red);
square(loc.x, loc.y, size);

}

void act(){
  timer++;
super.act();
if (timer == 200){
myObjects.add(new Follower(roomX, roomY, int(random(0, 600)), int(random(0, 800))));  //add a location later 
timer = 0;
}


}




}
