class fireButton {
  
  float x;    
  float y;    
  float w;    // width of button
  float h;    // height of button
  
  fireButton(float xpos, float ypos, float widthB, float heightB) {
    
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
  }
  
  void Draw() {
    fill(255);
    stroke(141);
    ellipseMode(CENTER);
    ellipse(x, y, w, h);
    
  }
  
  boolean MouseIsOver() {
    if (mouseX > (x-w) && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      return true;
    }
    return false;
  }
}
