class SnowFall{
  float x;
  float y;
  float vx;
  float vy;
  float mouseVX; 
  float mouseVY;
  
  SnowFall(float _x, float _mouseVX, float _mouseVY){
    x = _x;
    y = -200;
    mouseVX = _mouseVX;
    mouseVY = _mouseVY;
    vx = random(-1, 1);
    vy = random(1, 5);
  }
  
   void update() {
    x += vx;
    y += vy;
    float mouseDist = sqrt((mouseX - x)*(mouseX - x) + (mouseY - y)*(mouseY - y));
    if (mouseDist < 50){
      x += mouseVX * 2;
      y += mouseVY * 2;
    }
   }
   
   void display(){
    fill (255);
    ellipse(this.x,this.y,4,4);
  }
  
}
