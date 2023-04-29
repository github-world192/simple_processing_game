class Enemy{
  
  private int pos_x;
  private int pos_y;
  private boolean isDead = false;
  Enemy(int x,int y){
  pos_x = x;
  pos_y = y;
  }
  void draw_emy(){
    if(isDead == false){
    circle(pos_x,pos_y,100);
    pos_x -=7;
    }
    if((objpx-pos_x)*(objpx-pos_x)+(objpy-pos_y)*(objpy-pos_y)<=5000&&isDead==false){
     isDead = true;
      //dead
     life-=1;
     
    }
  }
    
   
 }
  
