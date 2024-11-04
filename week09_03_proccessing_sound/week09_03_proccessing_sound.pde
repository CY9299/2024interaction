// week09_03_proccessing_sound 聲音相關 使用音樂相關的Library匯式庫
// Sektch-Library-Manager Libraies 找 sound可找到sound函式庫 install
// File-Example, 選libraries核心函式庫 剛剛裝的sound的Soundfile的範例
//以下為精簡版
import processing.sound.*;

SoundFile sound;

void setup(){
size(500,500);
sound = new SoundFile(this,"In Game Music.mp3");
sound.loop();// 一直迴圈撥放
}

void draw(){
}
