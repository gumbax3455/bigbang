ArrayList<Particle> particles = new ArrayList<Particle>();

void settings() {
  size(800, 600);
}

void setup() {
  resetExplosion();
}

void draw() {
  background(0);

  for (int i = particles.size() - 1; i >= 0; i--) {
    Particle particle = particles.get(i);
    particle.run();
    if (particle.isDead()) {
      particles.remove(i);
    }
  }
}

void mousePressed() {
  resetExplosion();
}

void resetExplosion() {
  particles.clear();
  PVector origin = new PVector(width / 2, height / 2);

  for (int i = 0; i < 250; i++) {
    particles.add(new Particle(origin));
  }
}
