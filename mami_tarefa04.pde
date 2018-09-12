float tAtual = 0;
float v = 10;
float d = 0;
int contador = 0;
int s = 0;

void setup() {
  size(600,600);
  //frameRate(1);
}

void draw() {
  println(s);
  if(contador == 60){
  background(255,255,255);
  d = MRU(v, tAtual);
  //println(tAtual,d);
  tAtual++;
  mostraMundo();
  mostraCarrinho(d);
  contador = 0;
  s++;
  }
  contador++;
}

float MRU(float v, float t) {
  float d;
  d = v*t;
  return(d);
}

void mostraMundo() {
  stroke(0,0,0);
  strokeWeight(1);
  for (int i = 0; i < 12; i++) {
    
    line(i * 50, 0, i * 50, 600);
    line(0, i * 50, 600, i * 50);
  }
}
void mostraCarrinho(float d){ 
  stroke(0,0,255);
  strokeWeight(5);
  rect(d+4,275,10,7);
  rect(d,284,20,8);
  ellipse(d+3,297,5,5);
  ellipse(d+18,297,5,5);
}
