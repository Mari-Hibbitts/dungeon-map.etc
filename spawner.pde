class Spawner extends Enemy{

Spawner(int x, int y){
super(100,50,x, y);
}

void show(){
super.show();
fill(red);
square(loc.x, loc.y, size);

}

void act(){
super.act();
myObjects.add(new Follower(roomX, roomY));

}




}
