class Particle{
  
  PVector pos;
  PVector velo;
  float speed = 100;
  float angle = 3 * PI;
  float noiseVal = 0;
  
  
  Particle (float X, float Y)
  {
    pos = new PVector(X,Y);
    velo = new PVector(0,0);
  }
  
  void update(float perlin)
  {
    if (pos.x > -10 && pos.x < width + 10 && pos.y > -10 && pos.y < height + 10)
    {
    noiseVal = noise(pos.x * perlin, pos.y * perlin);
    velo = PVector.fromAngle(noiseVal * angle);
    velo.setMag(speed);
    pos.add(PVector.div(velo, (frameRate * 3)));
    show();
    }
    /*
    else
    {
      pos = new PVector(random(width), random(height));
    }
    */
  }
  
  
  void show()
  {
    fill((1.3 * noiseVal * 255) % 255, 255, 255);
    noStroke();
    circle(pos.x, pos.y, 0.5);
  }
  
}
