// week09_06_keyboard_ninja02_random
PImage board;
void setup() {
  size(600, 400);
  board = loadImage("board.png");
}
float appleX =100, appleY =500, appleVX =5, appleVY =-30;
void randomApple(){
appleX= random(100,500);
appleY =500;
appleVX =random(-8,8);
appleVY =random(-30,-20);
}
void draw() {
  background(board);
  fill(255, 0, 0);
  ellipse(appleX, appleY, 80, 80);
  appleX += appleVX;
  appleY += appleVY;
  appleVY+= 0.98; //0.98gravity重力加速度(移動的速度，會受到「加速度」影響)
  if (appleX >600 || appleX <0 || appleY>550) {
    randomApple(); //當蘋果出界時，重新設新的蘋果的位置、速度
  }
}
