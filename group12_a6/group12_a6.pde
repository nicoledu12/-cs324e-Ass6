float prevMouseX;
float prevMouseY;
Firepit firepit;
fireButton fb;
ArrayList<Firepit> smokeParticles;
ArrayList<SnowFall> SnowFlakes;
ArrayList<SnowFall> SnowFlakes1;
ArrayList<SnowFall> SnowFlakes2;
ArrayList<SnowFall> SnowFlakes3;
ArrayList<SnowFall> SnowFlakes4;
ArrayList<Firework> fireworks = new ArrayList<Firework>();
PVector gravity;
PImage img;

 void setup(){
   
   img = loadImage("CampFire.png");
   
   size(750,500);
 
   smokeParticles = new ArrayList<Firepit>();
   
   SnowFlakes = new ArrayList<SnowFall>();
   SnowFlakes1 = new ArrayList<SnowFall>();
   SnowFlakes2 = new ArrayList<SnowFall>();
   SnowFlakes3 = new ArrayList<SnowFall>();
   SnowFlakes4 = new ArrayList<SnowFall>();
   
   fb = new fireButton(600,390,30,30);
  
   gravity = new PVector(0, .2);
 }
 
 void draw(){
   noStroke();
   // Sky
   background(25,49,139);
   
   
   // Fireworks
   strokeWeight(2);
   colorMode(HSB);
   if (random(0, 1) < 0.04) {
    Firework f = new Firework(round(random(440, 200)));
    fireworks.add(f);
  }
 
  for (int i = fireworks.size() - 1; i >= 0; i--) {
    if (fireworks.get(i).particles.size() < 1) {
      fireworks.remove(i);
    }
    else {
      fireworks.get(i).update();
      fireworks.get(i).show();
    }
  }
  
   
   // Snowflakes
   colorMode(RGB);
   noStroke();
   
float mouseVX = mouseX - prevMouseX;
   float mouseVY = mouseY - prevMouseY;
   for (int i = 0; i < 1; i++) {
      SnowFall snow = new SnowFall(0, mouseVX, mouseVY);
      SnowFlakes.add(snow);
    }
    for (int i = SnowFlakes.size() - 1; i >= 0; i--) {
      SnowFall snow = SnowFlakes.get(i);
      snow.update();
      snow.display();
      }
      
    for (int i = 0; i < 1; i++) {
      SnowFall snow1 = new SnowFall(width/4, mouseVX, mouseVY);
      SnowFlakes1.add(snow1);
    }
    
    for (int i = SnowFlakes1.size() - 1; i >= 0; i--) {
      SnowFall snow1 = SnowFlakes1.get(i);
      snow1.update();
      snow1.display();
      }
    for (int i = 0; i < 1; i++) {
      SnowFall snow2 = new SnowFall(width/2, mouseVX, mouseVY);
      SnowFlakes2.add(snow2);
    }
    
    for (int i = SnowFlakes2.size() - 1; i >= 0; i--) {
      SnowFall snow2 = SnowFlakes2.get(i);
      snow2.update();
      snow2.display();
      }
      
    for (int i = 0; i < 1; i++) {
      SnowFall snow3 = new SnowFall(width * 3/4, mouseVX, mouseVY);
      SnowFlakes3.add(snow3);
    }
    for (int i = SnowFlakes3.size() - 1; i >= 0; i--) {
      SnowFall snow3 = SnowFlakes3.get(i);
      snow3.update();
      snow3.display();
      }
      
   for (int i = 0; i < 1; i++) {
      SnowFall snow4 = new SnowFall(width, mouseVX, mouseVY);
      SnowFlakes4.add(snow4);
    }
    for (int i = SnowFlakes4.size() - 1; i >= 0; i--) {
      SnowFall snow4 = SnowFlakes4.get(i);
      snow4.update();
      snow4.display();
      }
   prevMouseX = mouseX; 
   prevMouseY = mouseY;
   // Ground
   rectMode(CENTER);
   fill(13,44,42);
   rect(375,450,width,100);
   
    // Camp Fire
    for (int i = 0; i < 10; i++) {
      Firepit smoke = new Firepit();
      smokeParticles.add(smoke);
    }
    for (int i = smokeParticles.size() - 1; i >= 0; i--) {
      Firepit smoke = smokeParticles.get(i);
      smoke.update();
      smoke.display();
      }
      
    fb.Draw();
    image(img,540,350,width/6,height/6);
    
 }
 
 void mousePressed(){
   noStroke();
  if (fb.MouseIsOver()) {
    for (int i = smokeParticles.size() - 1; i >= 0; i--) {
      Firepit smoke = smokeParticles.get(i);
      smoke.stoke();
      }
      
  }
}
