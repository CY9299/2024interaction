// week09_07_keyboard_ninja04_void_keyPressed_appleKey
PImage board;
void setup() {
  size(600, 400);
  board = loadImage("board.png");
}
float appleX =100, appleY =500, appleVX =5, appleVY =-30;
char appleKey; // 蘋果上面，要秀的字母
void randomApple() {
  appleX= random(100, 500);
  appleY =500;
  if (appleX<300) appleVX =random(0, 8);
  else appleVX = random(-8, 0);
  appleVY =random(-30, -25);
  appleKey = (char)('a' + int(random(26)));
}
int score = 0;
void keyPressed() {
  if (key == appleKey) {
    score+= 100;//答對加分
  } else {
    score -=200;//答錯扣很多分
  }
}
void draw() {
  background(board);
  text("Score:"+score,400,50);
  fill(255, 0, 0);
  ellipse(appleX, appleY, 80, 80);
  fill(255, 255, 0);
  textSize(50);
  textAlign(CENTER, CENTER);
  text(appleKey, appleX, appleY);
  appleX += appleVX;
  appleY += appleVY;
  appleVY+= 0.98; //0.98gravity重力加速度(移動的速度，會受到「加速度」影響)
  if (appleX >600 || appleX <0 || appleY>550) {
    randomApple(); //當蘋果出界時，重新設新的蘋果的位置、速度
  }
}
