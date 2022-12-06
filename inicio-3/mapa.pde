
//SoundFile map_sound;
class Mapa {
  PImage mugman;
  PImage batata;
  PImage cebola;
  PImage flag;
  int x, y;
  Mapa() {
    x=0;
    y=0;
  }
  void personagem() {
    if (keyPressed) {
      if (keyCode == LEFT && x>0) {
        x-=5;
      }
      if (keyCode == RIGHT && x+30<width) {
        x+=5;
      }
      if (keyCode == UP && y>0) {
        y-=5;
      }
      if (keyCode == DOWN && y+30<height) {
        y+=5;
      }
    }

    image(cuphead, x, y, 50, 50);
  }
  void mapa() {
    mugman = loadImage("mugman_.png");
    batata = loadImage("potato2.png");
    cebola = loadImage("cebola2.png");
    flag = loadImage("flag1.png");
    fill(#DBB189);
    noStroke();
    rect(0, 0, 50, 70);
    rect(0, 70, 430, 50);
    rect(width/2, 70, 50, 400);
    rect(width/2-130, 420, 150, 50);


    rect(430, 38, 90, 90);
    rect(80, 385, 90, 90);




    image(batata, 435, 40, 80, 80);
    image(cebola, 85, 390, 80, 80);

    if (b.flag==1) {
      image(flag, 500, 50, 80, 80);
    }
    if (c.flag==1) {
      image(flag, 150, 397, 80, 80);
    }

    if (b.flag==1 && c.flag==1) {
      rect(430, 385, 90, 90);
      image(mugman, 435, 390, 80, 80);
    }

    fill(255);
  }
  void colisao() {
    if (x>= 430 && x+50<=520 && y>= 38 && y+50<=128) {
      if (keyPressed && key == ENTER) {
        fase=2;
      }
    }
    if (x >= 80 && x+50<=170 && y>= 385 && y+50<=475) {
      if (keyPressed && key == ENTER) {
        fase=3;
      }
    }
    if (b.flag==1 && c.flag==1) {
      if (x >= 430 && x+50<=520 && y>= 385 && y+50<=475) {
        if (keyPressed && key == ENTER) {
          fase=8;
        }
      }
    }
  }
}
