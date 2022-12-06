void bossBatata() {
  b.mostraBatata();
  b.mostraVida();

  for (int i=0; i<tiro.size(); i++) {
    tiros = tiro.get(i);
    tiros.mostra_Tiro();
    tiros.move();
    tiros.hitsb();
    
  }

  if (ntiro<3) {
    if (tempo>60) {
      tirob.add(new tiroBatata());
      ntiro++;
      tempo=0;
    }
  }
  if (tempo>180) {
    ntiro=0;
  }
  if (ntiro>0 && tempo<60) {
    tiroBatata = true;
  } else {
    tiroBatata = false;
  }
  for (int i=0; i<tirob.size(); i++) {
    tirosb = tirob.get(i);
    tirosb.mostraTiro();
    tirosb.cupheadcolide();
  }
  tempo++;
}
