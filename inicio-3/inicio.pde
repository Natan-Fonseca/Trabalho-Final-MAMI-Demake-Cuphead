class Button {
  PVector Pos =  new PVector(0, 0);
  float Width = 0;
  float Height = 0;
  String Text;
  Boolean Pressed = false;
  Boolean Clicked = false;
  int b;
  int m;

  //constructor
  Button(float x, int y, int w, int h, String p, int ba, int ma) {
    Pos.x = x;
    Pos.y = y;
    Width = w;
    Height = h;
    Text = p;
    b = ba;
    m = ma;
  }
  
  
  void update() {
    if (mousePressed == true && mouseButton == LEFT && Pressed == false) {
      Pressed = true;
      if (mouseX >= Pos.x-35 && mouseX <=Pos.x+Width && mouseY >= Pos.y-55 && mouseY <=Pos.y+Height-20) {
        Clicked = true;
      }
    } else {
      Pressed = false;
      Clicked = false;
    }
  }
  void render(){
    fill(200);
    rect(Pos.x-35, Pos.y-25, Width, Height);
    
    textFont(font, m);
    fill(0);
    text(Text, Pos.x+b, Pos.y);
  }
  
  Boolean isClicked(){
    return Clicked;
  }
}
