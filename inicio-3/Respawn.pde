int win;
PImage wingame;
Button respawn;
Button restart;
Button voltar;
void Win() {
  background(0);
  textFont(font2, 110);
  textAlign(CENTER);
  fill(255);
  pushMatrix();
  translate(0, 0);
  text("A\n KNOCKOUT! ", width/2, height/7*2);
  popMatrix();
  textAlign(CORNER);
  respawn = new Button(width/5*2.2, height/7*4+50, 130, 40, "Voltar", -5, 17);
  respawn.update();
  respawn.render();
  if (respawn.isClicked()) {
    cup.vida=3;
    fase = 1;
  }
}

void gameover() {
  background(0);
  textFont(font2, 110);
  fill(255);
  pushMatrix();
  translate(0, 0);
  text("Game Over ", width/3-130, height/7*2);
  popMatrix();
  restart = new Button(width/5*2.2, height/7*4+50, 130, 40, "Reiniciar", -20, 17);
  restart.update();
  restart.render();
  if (restart.isClicked()) {
    c.xv=width-80;
    b.xv=width-80;
    cup.vida=3;
    fase = 2;
  }
}
void gameover2() {
  background(0);
  textFont(font2, 110);
  fill(255);
  pushMatrix();
  translate(0, 0);
  text("Game Over ", width/3-130, height/7*2);
  popMatrix();
  restart = new Button(width/5*2.2, height/7*4+50, 130, 40, "Reiniciar", -20, 17);
  restart.update();
  restart.render();
  if (restart.isClicked()) {
    c.xv=width-80;
    b.xv=width-80;
    cup.vida=3;
    fase = 3;
  }
}
void creditos() {
   background(0);
  textFont(font2, 85);
  fill(255);
  pushMatrix();
  translate(0, 80);
  text("Criadores: ", 100, 85);
  textFont(font, 15);
  text("MICKAEL CASTRO: @koal_castro", 145, 160);
  text("NATAN FONSECA: @n.a_tan", 165, 190);
  text("SISTEMAS E MÍDIAS DIGITAIS", 155, 270);
  text("M.A.M.I. - MATEMÁTICA APLICADO A MULTIMÍDIA", 70, 300);
  popMatrix();
  voltar = new Button(width/5*2.2, height/7*4+110, 130, 40, "Voltar", -5, 17);
  voltar.update();
  voltar.render();
  if (voltar.isClicked()) {
    fase = 0;
  }
}
