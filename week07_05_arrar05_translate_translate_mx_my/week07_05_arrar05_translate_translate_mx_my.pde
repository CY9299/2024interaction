// week07_05_arrar05_translate_translate_mx_my會移動的背景，但是其他要正確運作
void setup() {
  size(500, 400);
}
void keyPressed()
{
  if(keyCode==RIGHT) x+=1;
  if(keyCode==LEFT) x-=1;
  if(keyCode==UP) y-=1;
  if(keyCode==DOWN) y+=1;
}
float x= 250, y=200;
void draw() {
  
  background(219);//灰底
  stroke(210);//灰底的線
  translate(-x, -y);
  translate(width/2, height/2);
  float mx = mouseX+x-width/2, my = mouseY+y-height/2
  ellipse(mouseX+x, mouseY+y, 8, 8);
  strokeWeight(1);
  for(int i=0; i<30; i++){
    line(0,i*30,500,i*30);
    line(i*30,0, i*30,500);
  }
  //background(215, 184, 200);//紅底
  //stroke(211,180,196);//紅底的線
  float dx =mx - x, dy = my-y;
  float a = atan2(dy, dx);//算出角度
  line(x, y, mx, my);
  myTank(x, y, a);
}
void myTank(float x, float y, float a) {
  translate(x, y);
  rotate(a);
  fill(167, 167, 175);
  stroke(110, 110, 113);
  strokeWeight(4);
  rect(20, -10, 20, 20); //砲管

  fill(204, 102, 156);
  stroke(125, 84, 105);
  strokeWeight(3);
  ellipse(0, 0, 55, 55);//圓形的身體
}
