//week04_2__pushMatrix_scale_popMatrix
size(500, 500);
PShape taiwan2 = loadShape("taiwan.svg"); //本周
PShape taiwan = loadShape("Taiwan-icon.svg");
pushMatrix();
  scale(10);
  shape(taiwan);
popMatrix();
pushMatrix();
   scale(0.5);
   shape(taiwan2);
popMatrix();
