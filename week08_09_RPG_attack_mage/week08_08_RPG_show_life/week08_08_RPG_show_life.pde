// week08_08_RPG_show_life
int [][]floor = {
  {21, 20, 8, 1, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 3, 3, 3, 3 ,3, 5},
  {21, 20, 1, 10, 5, 4, 1, 6, 1, 13, 1, 12, 1, 1, 3, 1, 1, 1, 1, 5},
  {21, 20, 1, 10, 5, 4, 1, 6, 1, 13, 1, 12, 1, 1, 3, 3, 3, 3 ,3, 5},
  {21, 20, 1, 10, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 3, 3,  3, 3 ,3, 5},
  {21, 20, 1, 10, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 3, 3,  3, 3 ,3, 5},
  {21, 20, 1, 10, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 3, 3,  3, 3 ,3, 5},
  {21, 20, 1, 10, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 3, 3,  3, 3 ,3, 5},
  {21, 20, 21, 20, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 3, 3,  3, 3 ,3, 5},
  {21, 20, 1, 20, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 3, 3,  3, 3 ,3, 5},
  {21, 20, 1, 20, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 3, 3,  3, 3 ,3, 5},
  {21, 20, 20, 12, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 3, 3,  3, 3 ,3, 5},
  {21, 20, 1, 10, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 3, 3,  3, 3 ,3, 5},
  {21, 20, 20, 1, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 3, 3,  3, 3 ,3, 5},
  {21, 20, 1, 1, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 3, 3,  3, 3 ,3, 5},
  {21, 20, 1, 1, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 3, 3,  3, 3 ,3, 5},
};
PImage img, user;
PImage[] fimg = new PImage[40];
void setup() {
  size(640, 480);
  img = loadImage("640x480.png");
  user = loadImage("5.png");//勇者
  for (int i=1; i<22; i++)fimg[i]= loadImage(i+".png");
}
int userI = 12, userJ =15;
void draw() {
  for (int i=0; i<floor.length; i++) {
    for (int j =0; j<20; j++) {
      int now = floor[i][j];
      image(fimg[now], j*32, i*32);
    }
  }
  image(user,16,16);
  textSize(30);
  text("Level: " + level,16,90);
  textSize(20);
  text("Live: " +attack,16,140);
  text("Defense: "+defence,16,170);
  text("Magic: "+magic,16,200);
  text("Exp: "+exp,16,230);
  text("Coins: "+ coin,16,290);
  image(user, userJ*32, userI*32);
  if(gameOver) background(0,255,0);
}
int level = 1,live=2693, attack =14, defence = 16, magic =10,exp = 72, coin = 72;
boolean gameOver = false;
void keyPressed() {
  int newI =userI, newJ = userJ;
  if (keyCode==RIGHT)newJ++;
  if (keyCode==LEFT)newJ--;
  if (keyCode==UP)newI--;
  if (keyCode==DOWN)newI++;
  if (floor[newI][newJ]!=21 && floor[newI][newJ]!=20) {
    userI =newI;
    userJ =newJ;
    if(floor[userI][userJ]==8) gameOver = true;
    floor[userI][userJ] = 3;
  }
}
