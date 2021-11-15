
class Hero extends GameObjects{
float speed;
Weapon myWeapon;

 Hero(){
   super();
   hp = 100;
   speed = 5;
   roomX = 1;
   roomY = 1;
   size = 40;
myWeapon = new AutoPistol();
 
 }
 
 void show(){
fill(green);
stroke(black);
strokeWeight(2);
circle(loc.x, loc.y, size);
 
 }
 
 void act(){
   super.act();
 //collide
 
if (dist(enemy.loc.x, enemy.loc.y, myHero.loc.x, myHero.loc.y) < enemy.size/2 + myHero.size/2){
 println("die");
  myHero.hp--;
if (hp <=0){
mode = GAMEOVER;
}
}

 if (wkey) vel.y = -speed;
 if(skey) vel.y = speed;
 if (akey) vel.x = -speed;
  if (dkey) vel.x = speed;
 
  if (vel.mag() > speed) vel.setMag(speed);
 
  if (!wkey && !skey) vel.y = vel.y*0.9;
if (!akey && !dkey) vel.x = vel.x*0.9;

//moving around rooms

if (northRoom!=#FFFFFF && loc.x > 371 && loc.x < 428 && loc.y == 103){
roomY--;
loc = new PVector (width/2,497);
}

if (eastRoom!=#FFFFFF && loc.y > 262 && loc.y < 327 && loc.x == 687){

roomX++;
loc = new PVector (113,height/2);
}

if (southRoom!=#FFFFFF && loc.x > 375 && loc.x < 432 && loc.y == 496){
roomY++;
loc = new PVector (width/2,103);
}

if (westRoom!=#FFFFFF && loc.y > 270 && loc.y < 328 && loc.x == 112){
roomX--;
loc = new PVector (687,height/2);
}
 myWeapon.update();
 if (spacekey) myWeapon.shoot();
 
 }



}
