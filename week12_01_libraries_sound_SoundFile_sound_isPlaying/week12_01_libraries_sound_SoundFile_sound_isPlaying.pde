//week12_01_libraries_sound_SoundFile_sound_isPlaying
// 官網-Documentaion 文件-Libraries函式庫(圖書館)-Sound聲音部分
//https://processing.org/reference/libraries/sound/index.html
//我們教過play() stop() pause()
import processing.sound.*;
SoundFile sound1, sound2;
//import processing.sound.*;
//SoundFile sound1, sound2; //兩段音樂
int playing = 1;
void setup() {
  size(640, 360);
  background(255);
  sound1 =new SoundFile(this, "Intro Song_Final.mp3");
  sound2 =new SoundFile(this, "In Game Music.mp3");
}
void draw() {
  if (sound1.isPlaying())//音樂1有沒有在播放
  {
    playing=1;
  } else if (sound2.isPlaying()) {
    playing=2;
  } else {//沒有任何音樂再撥放
    if (playing==1) sound2.play();//換另一首
    else sound1.play();
  }
}
