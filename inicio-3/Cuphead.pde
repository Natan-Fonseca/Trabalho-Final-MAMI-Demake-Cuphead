class Cuphead {
  int x;
  int y;

  int estadopulo;
  int estadolado;

  int estado;
  int parado;
  int andando;
  int atirando;

  int direita;
  int esquerda;
  int gravidade;
  int pulo;
  int solo;
  int dash;
  int tamanho;

  int vida;

  PImage imgparado;
  PImage imgatirando;
  PImage imgatirando1;
  PImage imgandando1;
  PImage imgandando2;
  Cuphead() {
    x=50;
    y = 450;
    direita = 1;
    esquerda = 0;
    gravidade = 5;
    pulo=1;
    solo=0;
    dash=150;
    tamanho = 50;
    vida = 3;

    imgparado = loadImage("sprite_parado.png");
    imgatirando = loadImage("sprite_atirando.png");
    imgatirando1 = loadImage("sprite_atirando1.png");
    imgandando1 = loadImage("sprite_andando01.png");
    imgandando2 = loadImage("sprite_andando02.png");


    parado=0;
    atirando=3;
    andando=0;
  }

  void vida() {
    if (vida<=0) {
      if (fase == 2) {
        fase=5;
      }
      if (fase == 3) {
        fase=6;
      }
      vida=0;
    }
  }

  void boneco() {

    if (estado==andando) {
      andando++;
      if (andando==1) {
        image(imgandando1, x, y-80, imgandando1.width/2, imgandando1.height/2);
      } else if (andando==2) {
        image(imgandando2, x, y-80, imgandando2.width/2, imgandando2.height/2);
        andando=0;
      }
    } else if (estado==atirando) {
      if (estadolado==esquerda) {
        image(imgatirando1, x, y-80, imgatirando.width/2, imgatirando.height/2);
      } else {
        image(imgatirando, x, y-80, imgatirando.width/2, imgatirando.height/2);
      }
    } else {
      image(imgparado, x, y-80, imgparado.width/2, imgparado.height/2);
    }
  }

  void colidebatata() {
    if (this.x+64>=b.x) {
      this.x-=30;
      vida--;
      vida();
    }
  }

  void colidecebola() {
    if (this.x+64>=c.x-95 && this.x<=c.x+95) {
      if(this.x+32<=width/2){
        this.x-=30;
      } else {
        this.x+=30;
      }
      vida--;
      vida();
    }
  }

  void pulo() {
    if (estadopulo == pulo) {
      y-=gravidade;
    } else if (estadopulo == solo && y<=450) {
      y+=gravidade;
    }
    if (y==320) {
      estadopulo=solo;
    }
  }

  void movimento() {
    if (keyPressed) {
      if (keyCode == LEFT && x>0) {
        x-=4;
        estadolado = esquerda;
        lado = false;
        estado=andando;
      }
      if (keyCode == RIGHT && x+tamanho<width) {
        x+=4;
        estadolado = direita;
        lado = true;
        estado=andando;
      }
    }
  }

  void dash() {
    if (key == ' ') {
      if (estadolado == direita) {
        if (x>=width-dash) {
          x=width-tamanho;
        } else {
          x+=dash;
        }
      } else if (estadolado == esquerda) {
        if (x<=0+dash) {
          x=0;
        } else {
          x-=dash;
        }
      }
    }
  }
}
