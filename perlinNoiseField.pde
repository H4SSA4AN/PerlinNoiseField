import java.util.*;

float perlin = 0.002;
float x = 0;
ArrayList<Particle> dots = new ArrayList<Particle>();

void setup()
{
  colorMode(HSB);
  size (2000, 1000);
  background(0);
  for (int i = 0; i < 10; i++)
  {
    dots.add(new Particle(random(width), random(height)));
  }
}


void draw()
{
  for (Particle dot : dots)
  {
    dot.update(perlin);
  }

println(frameRate);


}


void mousePressed()
{
 // perlin = random(0.001, 0.01);
    for (int i = 0; i < 10000; i++)
  {
    //dots.add(new Particle(random(mouseX - 100, mouseX + 100), random(mouseY - 100, mouseY + 100)));
    dots.add(new Particle(random(width), random(height)));
  }
  println(dots.size());
}
