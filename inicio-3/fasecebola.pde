void bossCebola() {
  c.mostraCebola();
  c.mostraVida();

  for (int i=0; i<tiro.size(); i++) {
    tiros = tiro.get(i);
    tiros.mostra_Tiro();
    tiros.move();
    tiros.hitsc();   
  }

  if (ntiroc<10) {
    tempoc++;
    if (tempoc>30) {
      tiroc.add(0, new tiroCebola());
      ntiroc++;
      tempoc=0;
    }

    if (ntiroc>=10) {
      ntiroc=0;
    }
    for (int i=0; i<tiroc.size(); i++) {
      tirosc = tiroc.get(i);
      tirosc.mostraTiro();
      tirosc.cupheadcolide();
    }
  }
}
