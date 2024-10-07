// week05_07_pendulum_PVector_normalize_dot_mult
void setup() {
  size(400, 600);
}
float x = 200, y = 300;
void draw() {
  background(255);
  stroke(0);//原來黑色的線
  line(200, 100, x, y);
  ellipse(x, y, 40, 40);
  stroke(255, 0, 0);//紅色往下的線
  line(x, y, x, y+100);

  PVector d = new PVector(x-200, y-100).normalize();//長度1
  PVector d2 = new PVector(0, 1);//cos(a)
  float g = PVector.dot(d, d2);
  d.mult(100*g);
  stroke(0, 255, 0);//綠色左下的線
  line(x, y, x+d.x, y+d.y);

  PVector N =  new PVector(d.y, -d.x).normalize();
  N.mult(100*sin(acos(g)));//g是 cos(a),acos(g)就是角度 a
  stroke(0, 0, 255);//藍色線往右下
  line(x, y, x+N.x, y+N.y);
}
void mouseDragged() {
  x = mouseX;
  y = mouseY;
}
