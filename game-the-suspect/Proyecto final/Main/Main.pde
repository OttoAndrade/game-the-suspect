boolean a,w,s,d,tra = false;
float trax,tray,travx,travy = 0;
int nx,ny = 0;
Personaje p;
Pared[] pa = new Pared[10];
Puzzle pu;

void setup(){
  size(1280,720);
  
  travx = 8;
  travy = map(travx,0,width,0,height);
  
  pu = new Puzzle();
  p = new Personaje();
  for(int i = 0; i < pa.length; i++){
    pa[i] = new Pared(40*i,20,20,100);
  }
}

void draw(){
  background(0);
  p.update();
  colision();
  p.display();
  niveles();
  for(int i = 0; i < pa.length; i++){
    pa[i].display();
  }
  //transicion();
  
  //pu.puzzle1();
}
