// week09_09_keyboard_ninja06_add_music
import processing.sound.*;
SoundFile sound1,sound2,sound3;
PImage board;
void setup() {
  size(600, 400);
  board = loadImage("board.png");
  randomApple();
sound1 =new SoundFile(this,"Intro Song Final.mp3");
sound2 = new SoundFile(this,"")
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
  if (state==0)state=1;
  if (state==2) {
    if (key == appleKey) {
      score+= 100;//答對加分
    } else {
      score -=200;//答錯扣很多分
    }
  }
}
int state = 0;
int countdown =64*4;
void draw() {
  background(board);
  textSize(50);
  textAlign(CENTER, CENTER);
  fill(255, 255, 0);
  if (state==0)text("Press Any Key to Start", 300, 200);
  else if (state==1) {
    textSize(100);
    countdown--;
    if(countdown>60*3)text("3",300,200);
    else if (countdown>60*2) text("2", 300, 200);
    else if (countdown>60*1)text("1", 300, 200);
    else if (countdown>0)text("GO", 300, 200);
    else state = 2;}//時間用完，就跳入新畫面
    else {
    text("Score:"+score, 400, 500);
    fill(255, 0, 0);
    ellipse(appleX, appleY, 80, 80);
    text(appleKey, appleX, appleY);
   fill(255, 255, 0);
  textSize(50);
  textAlign(CENTER, CENTER);
    appleX += appleVX;
    appleY += appleVY;
    appleVY+= 0.98; //0.98gravity重力加速度(移動的速度，會受到「加速度」影響)
    if (appleX >600 || appleX <0 || appleY>550) {
      randomApple(); //當蘋果出界時，重新設新的蘋果的位置、速度
    }
  }
}
