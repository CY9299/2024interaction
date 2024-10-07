//week05_02_cwa_typhoon_array_loadStrings
//老師準備list.txt裡面有299行(很多圖檔的檔名)
int N =299;//剛好有299張圖
PImage [] imges = new PImage[299];
void setup()
{
  size(800, 800);
  //把list.txt的299行，放入filenames裡
  String []filenames = loadStrings("list.txt");
  for (int i=0; i<N; i++)
  {//把每一張圖都讀進來
   imges[i]= loadImage(filenames[i]);
  }
}
void draw() {
  int i = frameCount%N;
  background(imges[i]);
}
