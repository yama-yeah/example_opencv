void demo(){
  if(face[0]+face[2]/2>width/2&&char_x<width){
    dx=2;
  }
  else if(char_x>0){
    dx=-2;
  }
  else{
    dx=0;
  }
  char_x+=dx;
  rect(char_x,height*2/3,50,20);
  println(dx);
}
