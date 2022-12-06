
class Tiro {
  int x, y, dx, dy, conta, r;
  boolean lado;
  PImage shot;
  Tiro(int nx, int ny, boolean l) {
    x= nx;
    y= ny;
    r= 4;
    dx = 5;
    lado=l;
    shot = loadImage("tiro.png");
  }
  void mostra_Tiro() {
    fill(255);
    noStroke();
    image(shot, this.x+45, this.y-45,shot.width/6,shot.height/6);
  }
  void move() {
    if (lado == true) {
      x+= dx;
    } else {
      x-= dx;
    }
  }
  void hitsb() {
    if ( this.x>=b.x) {
      b.xv-=10;
      tiro.remove(tiros);
    }
  }

  void hitsc() {
    if ( this.x>=c.x-95 && this.x<c.x+95) {
      c.xv-=10;
      tiro.remove(tiros); 
    }
  }
}
