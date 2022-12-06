boolean lado;
int fase = 0;
int tempo1 = 0;
boolean tiroBatata = false;

Tiro tiros;

ArrayList<Tiro> tiro = new ArrayList<Tiro>();

Batata b;
tiroBatata tirosb;
int tempo=0;
int ntiro = 0;

ArrayList<tiroBatata> tirob = new ArrayList<tiroBatata>();

Cebola c;
tiroCebola tirosc;
int tempoc=0;
int ntiroc = 0;

ArrayList<tiroCebola> tiroc = new ArrayList<tiroCebola>();

Cuphead cup;

void setup() {
  size(600, 600);
  //map_sound = new SoundFile(this, "map_sound.mp3");
  b = new Batata();
  tirosb = new tiroBatata();
  c = new Cebola();
  tirosc = new tiroCebola();
  cup = new Cuphead();
  tela();
}

void draw() {
  background(0);
  if (fase ==0) {
    botoes();
  }
  if (fase ==1) {
    background(#66C68F);

    //map_sound.rate(1);
    //map_sound.play();
    mapa();
  }
  if (fase == 2 || fase == 3) {
    background(#8cc3c8);
    fill(#989c50);
    rect(0, 450, 600, 200);
    fill(255);
    
    //map_sound.stop();
    cup.boneco();
    cup.movimento();
    cup.pulo();
    t++;
    textSize(24);
    text("HP:",10,580);
    text(cup.vida, 70,580);
  }
  if (fase == 2) {
    cup.colidebatata();
    bossBatata();
  }

  if (fase == 3) {
    cup.colidecebola();
    bossCebola();
  }
  if (fase == 4) {
    Win();
  }
  if (fase == 5) {
    gameover();
  }
  if (fase == 6) {
    gameover2();
  }
  if (fase == 7 || fase ==8) {
    creditos();
  }
}

void keyReleased() {
  if (keyCode == UP && cup.y>=450) {
    cup.estadopulo=cup.pulo;
  }
  cup.dash();
}

int t =0;
void keyPressed() {
  if (t>=10) {
    if (key == 'z') {
      cup.estado=cup.atirando;
      if (lado == true) {
        tiro.add(new Tiro(cup.x+20, cup.y, lado));
      } else {
        tiro.add(new Tiro(cup.x-70, cup.y, lado));
      }

      t=0;
    }
  }
}
