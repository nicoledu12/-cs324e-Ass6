class SnowFall{
  float x;
  float y;
  float vx;
  float vy;
  
  SnowFall(float _x){
    x = _x;
    y = -200;
    vx = random(-1, 1);
    vy = random(1, 5);
  }
  
   void update() {
    x += vx;
    y += vy;
   }
   
   void display(){
    fill (255);
    ellipse(this.x,this.y,2,2);
  }
  
}
