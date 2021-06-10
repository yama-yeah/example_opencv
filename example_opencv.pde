import gab.opencv.*;
import processing.video.*;
import java.awt.Rectangle;
float dx=2,dy=2;
float char_x,char_y;
Capture cam;
OpenCV opencv;
Rectangle[] faces;
PImage img;
float face[]=new float[6];
void setup(){
  size(375, 812);
  //fullScreen();
  startsearch();
  img = loadImage("red.png");
  //launch("start py");
}

void draw(){
  background(255);
  face_point();
  //println(face[0]);
  demo();
  show_me();
  //onCameraPreviewEvent();
}
void onCameraPreviewEvent() {
  //android camera
  println(90000000);
}
