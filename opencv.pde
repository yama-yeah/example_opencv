int CAM_WIDTH=320;
int CAM_HEIGHT=240;
int  cam_num=0;
void startsearch(){
  String[] cameras = Capture.list();
  while(true){
    if(cameras.length>0){
      break;
    }
    cameras = Capture.list();
  }
  for(int i=0; i<cameras.length; i++){
    println("[" + i + "] " + cameras[i]);
    cam_num=i;
  }
  //print(cam_num);
  cam = new Capture(this,CAM_WIDTH,CAM_HEIGHT,cameras[cam_num]);
  cam.start();
}
void face_point(){
  //if(cam.available() == true){
    cam.read();
 
    //image(cam, 0, 0);
 
    opencv = new OpenCV(this, cam);
    opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
    faces = opencv.detect();
    int n=0;
    if(faces.length>0){
      float mx=faces[0].width;
      for(int i=1;i<faces.length;i++){
        if(mx<faces[i].width){
          mx=faces[i].width;
          n=i;
        }
      }
      face[0]=faces[n].x*width/CAM_WIDTH;
      face[1]=faces[n].y*height/CAM_HEIGHT;
      println("found");
      face[2]=faces[n].width;
      face[3]=faces[n].height;
      face[4]=faces[n].x;
      face[5]=faces[n].y;
      
    }
    
  //}
}
void show_me(){
  image(cam, width-CAM_WIDTH, height-CAM_HEIGHT);
  rect(face[4]+width-CAM_WIDTH,face[5]+height-CAM_HEIGHT,face[2],face[3]);
}
