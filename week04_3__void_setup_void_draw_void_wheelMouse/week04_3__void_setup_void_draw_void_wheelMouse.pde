//week04_3__void_setup_void_draw_void_wheelMouse
PShape taiwan2, taiwan; //宣告變數
void setup() {
  size(500, 500);
  taiwan2 = loadShape("taiwan.svg"); //本周
  taiwan = loadShape("Taiwan-icon.svg");
}
float taiwanScale = 1;
void draw() {
  background(#92CF25);
  pushMatrix();
   shape(taiwan);
  popMatrix();
  pushMatrix();
     scale(0.5*taiwanScale);
  shape(taiwan2);
  popMatrix();
}
void mouseWheel(MouseEvent e) {//mouseWheel 是mouse的滾輪
  float d = e.getCount();
  if (d>0) taiwanScale *=1.1;
  else taiwanScale *=0.9;
}
