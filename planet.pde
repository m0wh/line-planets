int s = 450;
int x = 10000;
float r1,r2,g;
float y = 0;
void setup(){
  size(1920,1080);
  noLoop();
  frameRate(1);
  pixelDensity(2);
}
void draw(){
  noFill();
  background(255);
  stroke(0);
  strokeWeight(0.001);
  translate(width/2,height/2);
  beginShape();
  for(float i = 0; i < x; i++){
    g = random(0,2*PI);
    r1 = random(-y,y);
    r2 = random(-y,y);
    vertex(cos(g)*s+r1,sin(g)*s+r2);
  }
  endShape(CLOSE);
}