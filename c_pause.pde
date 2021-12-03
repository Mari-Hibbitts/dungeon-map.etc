void pause() {
  background(grey);
  imageMode(CORNER);
  image(Pause, 0, 0, 800, 600);
    textFont(iFont);
    fill(white);
    text("MONEY: "+ money, 180, 130);
        imageMode(CENTER);
    image(coin, 670, 100, 100, 100);

}
