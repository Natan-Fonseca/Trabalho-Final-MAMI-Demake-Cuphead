class Batata {
  int x, y, xv,flag;
  PImage batata;
  PImage batata2;
  PImage nuvem;

  Batata() {
    batata = loadImage("potato2.png");
    batata2 = loadImage("potato3.png");
    nuvem = loadImage("nuvem.png");
    x = width-180;
    y = height/2;
    xv= width-80;
 
  }
  void mostraVida() {
    rect(40, 20, xv, 30);
    if (xv<=0) {
      fase = 4;
      flag=1;
    }
  }
  void mostraBatata() {
    image(nuvem, 220, 80, 110, 110);
    image(nuvem, 360, 120, 110, 110);
    image(nuvem, -40, 120, 110, 110);
    image(nuvem, 490, 60, 110, 110);
    image(nuvem, 70, 60, 110, 110);

    if (tiroBatata == true) {
      image(batata2, x-15, y-15, 200, 200);
    } else {
      image(batata, x-15, y-15, 200, 200);
    }
  }
}

class tiroBatata {
  int  x, dx, dy, r;
  PImage terra;

  tiroBatata() {
    terra = loadImage("terra.png");
    dx = b.x;
    dy = b.y+110;
    r = 60;
    x = 4;
  }

  void mostraTiro() {

    dx-=x;
    image(terra, dx, dy, r, r);
  }

  void cupheadcolide() {
    if (this.dx<=cup.x+cup.tamanho && this.dx+this.r>=cup.x) {
      if (cup.y-40+cup.tamanho>=dy) {
        cup.vida--;
        cup.vida();
        tirob.remove(tirosb);
      }
    }
  }
}
