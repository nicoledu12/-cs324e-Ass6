class Firework {
  ArrayList<Particle> particles = new ArrayList<Particle>();
  Particle particle;
  int num_part;
  boolean exploded = false;
  int c;
  
  Firework(int num_part) {
    this.particle = new Particle(random(0, width), height);
    this.particle.applyForce(new PVector(random(-5, 5), random(-30, -5)));
    this.particles.add(particle);
    this.num_part = num_part;
    this.c = color(random(0, 255), 255, 255, 200);
  }
  
  void update() {
    for (Particle p : particles) {
      p.applyForce(gravity);
      p.update();
    }
    
    if (this.particle.v.y >= 0 && !this.exploded) {
      this.particles.clear();
      this.exploded = true;
      for (int i = 0; i < this.num_part; i++) {
        Particle p = new Particle(this.particle.pos.x, this.particle.pos.y);
        p.applyForce(PVector.random2D().setMag(random(1, 3.5)));
        this.particles.add(p);
      }
    } 
    else if (this.exploded) {
      for (int i = this.particles.size() - 1; i >= 0; i--) {
        if (this.particles.get(i).pos.y > height)
          this.particles.remove(i);
      }
    }
  }
  
  void show() {
    stroke(this.c);
    for (Particle p : particles) {
      p.show();
    }
  }
}
