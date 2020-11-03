class Firepit{
  float x;
  float y;
  float vx;
  float vy;
  float alpha;
  
  Firepit(){
    x = 600;
    y = 400;
    vx = random(-1, 1);
    vy = random(-5, -1);
    alpha = 255;
  }
  
  boolean finished() {
    return alpha < 0;
  }
  
  void update() {
    x += vx;
    y += vy;
    alpha -= 5;
  }
  
  void display(){
    fill (162,146,129,alpha);
    ellipse(this.x,this.y,4,4);
  }
  
  void stoke(){
    fill (247,148,47,alpha);
    ellipse(this.x,this.y,4,4);
  }
}
