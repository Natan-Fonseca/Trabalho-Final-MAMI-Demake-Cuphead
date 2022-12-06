PFont font;
PFont font2;
PImage cenario;
PImage cuphead;

//import processing.sound.*;
//SoundFile music;
//SoundFile menu;

boolean start=false;

Button startbutton;
Button optionbutton;
Mapa tela1;


void tela() {
  cenario = loadImage("capa.png");
  cuphead = loadImage("cuphead_.png");
  font = createFont("atari-abandoned.ttf", 25);
  font2 = createFont("AtariST8x16SystemFont.ttf", 25);
  //music = new SoundFile(this, "CupheadMusic.mp3");
  //menu = new SoundFile(this, "Menu2_sound.mp3");
  //music.play();
  tela1 = new Mapa();
  startbutton = new Button(width/5*2.2, height/7*4, 130, 40, "Start", 0,15);
  optionbutton = new Button(width/5*2.2, height/7*4+50, 130, 40, "Creditos", -8,15);
}

void botoes() {
    titulo();
    pushMatrix();
    translate(0, -20);
    startbutton.update();
    startbutton.render();
    optionbutton.update();
    optionbutton.render();
    popMatrix();

    if (startbutton.isClicked()) {
      //b_music.play();
      //music.stop();
      //music.stop();
      //menu.play();
      fase = 1;
  } 
  
   if (optionbutton.isClicked()) {
      //b_music.play();
      //music.stop();
      //music.stop();
      //menu.play();
      fase = 7;
  }
  
}
void titulo() {
  
 image(cenario, 10 , 0, 580, 600);
  
  textFont(font2, 110);
  fill(255);
  pushMatrix();
  translate(0, 0);
  text("CUPHEAD ", width/3-93, height/7*2);
  fill(200, 200, 0);
  textFont(font, 20);
  text("Don't Deal With ", width/3-10, height/7*3-5-40);
  fill(200, 200, 0);
  text("The ", width/3+30, height/7*3-25);
  fill(#B7122B);
  text("    Devil ", width/3+30, height/7*3-25);
  popMatrix();
}

void mapa(){
  tela1.mapa();
  tela1.personagem();
  tela1.colisao();
}
