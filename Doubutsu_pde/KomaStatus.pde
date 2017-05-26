class KomaStatus {
  boolean captured;
  boolean active;
  boolean selected;

  KomaStatus(boolean active) {
    this.active = active;
    this.captured = false;
    this.selected = false;
  }
}

  void draw() {
    String komaImage = "";
    if (this.team==0 && this.kStat.active) komaImage = this.name+"A.png";
    else if (this.team==1 && this.kStat.active) komaImage = this.name+"B.png";
    else return;

    PImage img = loadImage(komaImage);
    image(img, SQUARESIZE*this.x+2, this.y*SQUARESIZE+2, SQUARESIZE-4, SQUARESIZE-4);

  
}