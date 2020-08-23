boolean a,w,s,d,f,q,tra,playing1,pu1,antf,enter,game,controls = false;
boolean start = true;
float trax,tray,travx,travy = 0;
int ny,anim = 0;
int nx = -1;
Personaje p;
Puerta[] puerta = new Puerta[1];
Pared[] pa = new Pared[10];
Puzzle pu;
int[] pisoY = new int[30];
PImage [] titulo = new PImage[3];

void setup(){
  size(1240,720);
  
  for(int i = 0; i < pisoY.length; i++){
    pisoY[i] = (i*20) + 40; 
  }
  travx = 8;
  travy = map(travx,0,width,0,height);
  
  pu = new Puzzle(480,100);
  p = new Personaje();
  for(int i = 0; i < pa.length; i++){
    pa[i] = new Pared(40*i,20,20,100);
  }
  puerta[0] = new Puerta (1180,270,PI/2);
}

void draw(){
  
  background(40);
  if(start){
    inicio();
  }
  else if(game){
    piso();
    p.update();
    colision();
    
    niveles();
    for(int i = 0; i < pa.length; i++){
      strokeWeight(1);
      pa[i].display();
    }
    
    p.display();
  }
  
  else if(controls){
   controles(); 
  }
  
}
