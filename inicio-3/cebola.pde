class Cebola {
  PImage cebola1;
  PImage cebola2;

  int x, y, xv,flag;

  Cebola() {
    x = width/2;
    y = height/2;
    xv= width-80;

    cebola1 = loadImage("cebola1.png");
    cebola2 = loadImage("cebola2.png");
  }
  void mostraVida() {
    rect(40, 20, xv, 30);
    if (xv<=0) {
      fase = 4;
      flag=1;
    }
  }
  void mostraCebola() {

    tempo1++;
    if (tempo1<=60) {
      image(cebola2, x-cebola2.width/2, y-cebola2.height/4, cebola2.width, cebola2.height);
    }
    if (tempo1>60 && tempo1<=150) {
      image(cebola1, x-cebola1.width/2, y-cebola2.height/4, cebola1.width, cebola1.height);
    }
    if (tempo1>150) {
      tempo1=0;
    }
  }
}

class tiroCebola {
  int  y, dxesq, dxdir, dy, r;
  tiroCebola() {
    dxesq = int(random(0, width/2-75));
    dxdir = int(random(width/2+75, width));
    dy = 0;
    r = 15;
    y = 7;
    
  }
  void mostraTiro() {
    dy+=y;
    fill(#b4eff2);
    rect( dxesq, dy, r/1.5, r*2);
    rect( dxdir, dy, r/1.5, r*2);
  }

  void cupheadcolide() {
    if (this.dxesq >= cup.x && this.dxesq+r/1.5 <= cup.x+cup.tamanho || this.dxdir >= cup.x && this.dxdir+r/1.5 <= cup.x+cup.tamanho) {
      if (cup.y-40<=this.dy+r*2 && cup.y-40+cup.tamanho>=this.dy) {
        cup.vida--;
        cup.vida();        
        tiroc.remove(tirosc);
      }
    }
  }
}
