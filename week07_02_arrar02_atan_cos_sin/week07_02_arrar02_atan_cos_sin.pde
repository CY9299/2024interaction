// week07_02_arrar02_atan_cos_sin
void setup(){
    size(500,400);
}

float x= 250,y=200;
void draw(){
  background(215,184,200);
  
  
 fill(204,102,156);
 stroke(125,84,105);
 strokeWeight(3);
  ellipse(x,y,55,55);//圓形的身體
  //line(x,y, mouseX,mouseY);
  float dx =mouseX - x,dy = mouseY-y;
  float a = atan2(dy,dx);//算出角度
  line(x,y,x+cos(a)*50, y+sin(a)*50);
  
  fill(167,167,175);
  stroke(110,10,113);
  strokeWeight(4);
  rect(240,160,20,20); //砲管
  
  

}
