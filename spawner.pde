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
if (timer == 300){
myObjects.add(new Follower(roomX, roomY));  //add a location later 
timer = 0;
}


}




}
