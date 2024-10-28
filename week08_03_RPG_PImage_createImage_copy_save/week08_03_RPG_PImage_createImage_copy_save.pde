// week08_03_RPG_PImage_creatImage_copy_save  用複製過來的，因為要用'剛剛的圖
PImage img;
void setup() {
  size(640, 480);
  img = loadImage("640x480.png");
}
void draw() {
  background(img);
  for (int i=0; i<15; i++) {
    for (int j =0; j<20; j++) {
      noFill();
      stroke(0);
      rect(j*32, i*32, 32, 32);// 小格子的大小是 32*32
    }
  }
  stroke(255, 0, 0);
  rect(J*32, I*32, 32, 32);
}
int I =-1, J=-1;
void mouseMoved() {
  I = mouseY/32;//小心y
  J= mouseX/32;//小心 x
}
int N = 1;//圖檔的編號
void mousePressed() {
  PImage now = createImage(32, 32, RGB);
  now.copy(img, J*32, I*32, 32, 32, 0, 0, 32, 32);
  now.save(N+".png");
  N++;
}
