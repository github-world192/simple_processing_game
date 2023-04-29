int objpx  = 100 ,objpy = 250;
int ex = 0 , ey = 0;
PImage bgimg;
int life = -1;
int score = 0;
int level = 0;
int count = 1800;
//PImage []btn = new PImage [6];
//setup
//init 
    Enemy[] enemyArr =  new Enemy[100];
    
     int total=1;
     
     void setup(){
       
       
     enemyArr[0] = new Enemy(1200+int(random(300)),int(random(300))); 
 enemyArr[1] = new Enemy(1200+int(random(300)),int(random(300))); 
 enemyArr[2] = new Enemy(1200+int(random(300)),int(random(300))); 
 
     
    size(1000,500);
    bgimg = loadImage("bgimg.png");
     

//botton picture
/*
   btn[0] = loadImage("01.jpg");
   btn[1] = loadImage("02.jpg");
   btn[2] = loadImage("03.jpg");
   btn[3] = loadImage("P01.jpg");
   btn[4] = loadImage("P02.jpg");
   btn[5] = loadImage("P03.jpg");
  */
}
  
//draw

void draw(){
  
  background(0);
 int s=millis();
  image(bgimg,0,0,width,height);
  if(life > 0&&count>=0){//game start
    //life
    //draw enemy
    
    
  
      
     
  
  
    textSize(50);
    fill(255,175,255);
    text("Life:",50,50);
    text(life,150,50);
    text("Time:",50,100);
    text(int(count/60),190,100);
    count--;
    
  circle(objpx,objpy,50); //player 
    //enemy_zone
    fill(255,0,0);
    //
    if(500<=s%1000&&s%1000<=510){
     enemyArr[total] = new Enemy(1200+int(random(300)),int(random(300))); 
     total+=1;
    }
    for(int i=0;i<total;i++){
      
  
     enemyArr[i].draw_emy();
   }
    
    //score
    fill(175,225,255);
    text("score:",650,50);
    text(score,800,50);
    noFill();
    noStroke();
    //shoot start
      if(keyPressed){
        if(key == 'x'||key == 'X'){
        score ++;
        }
        if(key == 'n'){
        life --;
        }
    }
  }
  else if(count<=0){
      textSize(50);
    fill(255,175,255);
    text("you win",width/2,height/2);
    }
  else if(life == 0)//u died
  {
    fill(200,200,200,20);
    rect(0,0,1000,500);
    textSize(80);
    fill(200,0,50);
    text("You Died...",330,200);
    textSize(30);
    fill(255,225,255);
    text("score:",440,250);
    text(score,520,250);
    
    gray();//botton
    rect(440,70,90,40,30);
    white();
    text("home",450,100);
    
    if(mouseX >440 &&mouseX <530 && mouseY >70&& mouseY < 110){
      white();//botton
      rect(440,70,90,40,30);
      gray();
      text("home",450,100);
      if(mousePressed == true){
        life = -1;
      }
    }
    
    noFill();
    noStroke();
  }
  else if(life == -1)//menu
  {
    
    textSize(50);
    white();
    text("space wars",400,200);
    textSize(40);
    
    rect(440,230,120,40,10);//white & gray
    black();
    text("easy",445,265);
    
    
    white();
    rect(440,290,120,40,10);
    black();
    text("hard",445,325);
    
    white();
    rect(440,350,120,40,10);
    black();
    text("insane",445,385);
    
    if(mouseX >440 &&mouseX <560 && mouseY >230&& mouseY < 270){
      gray();
      rect(440,230,120,40,10);
      white();
      text("easy",445,265);
      if(mousePressed == true){
        life = 4;
      }
    }
    if(mouseX >440 &&mouseX <560 && mouseY >290&& mouseY < 330){
      gray();
      rect(440,290,120,40,10);
      white();
      text("hard",445,325);
      if(mousePressed == true){
        life = 4;
        count=3600;
      }
    }
    if(mouseX >440 &&mouseX <560 && mouseY >350&& mouseY < 390){
      gray();
      rect(440,350,120,40,10);
      white();
      text("insane",445,385);
      if(mousePressed == true){
        life = 2;
        count=3600;
      }
    }
    
    /*imageMode(CENTER);
    image(btn[0],500,400);*/
  }
}

// player move
void keyPressed(){
  if((key == 'A'||key == 'a') && objpx>30 ){
  objpx -=10;
  }
  else if ((key == 'D'||key == 'd') && objpx < 970){
  objpx +=10;
  }
  else if ((key == 'W'||key == 'w') &&objpy > 30){
  objpy -=10;
  }
  else if ((key == 'S'||key == 's')&& objpy <470){
  objpy +=10;
  }
}
//color area
void black()
{
fill(0,0,0);
}
void gray()
{
fill(100,100,100);
}
void white()
{
  fill (255,255,255);
}
void no()
{
noFill();
}
