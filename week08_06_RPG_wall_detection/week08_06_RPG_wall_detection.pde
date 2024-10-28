// week08_06_RPG_wall_drtection
int [][]floor = {
  {21, 20, 1, 1, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 8, 3, 3, 3 ,3, 5},
  {21, 20, 1, 1, 5, 4, 1, 6, 1, 13, 1, 12, 1, 1, 8, 1, 1, 1, 1, 5},
  {21, 20, 1, 1, 5, 4, 1, 6, 1, 13, 1, 12, 1, 1, 8, 3, 3, 3 ,3, 5},
  {21, 20, 1, 1, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 8, 3,  3, 3 ,3, 5},
  {21, 20, 1, 1, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 8, 3,  3, 3 ,3, 5},
  {21, 20, 1, 1, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 8, 3,  3, 3 ,3, 5},
  {21, 20, 1, 1, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 8, 3,  3, 3 ,3, 5},
  {21, 20, 1, 1, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 8, 3,  3, 3 ,3, 5},
  {21, 20, 1, 1, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 8, 3,  3, 3 ,3, 5},
  {21, 20, 1, 1, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 8, 3,  3, 3 ,3, 5},
  {21, 20, 1, 1, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 8, 3,  3, 3 ,3, 5},
  {21, 20, 1, 1, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 8, 3,  3, 3 ,3, 5},
  {21, 20, 1, 1, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 8, 3,  3, 3 ,3, 5},
  {21, 20, 1, 1, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 8, 3,  3, 3 ,3, 5},
  {21, 20, 1, 1, 5, 4, 1, 1, 1, 13, 1, 12, 1, 1, 8, 3,  3, 3 ,3, 5},
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
  image(user, userJ*32, userI*32);
}
void keyPressed() {
  int newI =userI, newJ = userJ;
  if (keyCode==RIGHT)newJ++;
  if (keyCode==LEFT)newJ--;
  if (keyCode==UP)newI--;
  if (keyCode==DOWN)newI++;
  if (floor[newI][newJ]!=4 && floor[newI][newJ]!=3) {
    userI =newI;
    userJ =newJ;
  }
}
