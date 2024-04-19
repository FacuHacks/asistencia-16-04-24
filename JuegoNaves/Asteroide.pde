import processing.core.PImage;
import processing.core.PVector;

class Asteroide {
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  
  public Asteroide() {
    imagen = loadImage("asteroide.png");
    this.posicion = new PVector(random(width), random(height)); 
    this.velocidad = PVector.random2D().mult(2);
  }
  
  public Asteroide(PVector posicion, PVector velocidad) {
    this.posicion = posicion;
    this.velocidad = velocidad;
    this.imagen = loadImage("asteroide.png");
  }
  
  public void dibujar() {
    imageMode(CENTER);
    image(imagen, posicion.x, posicion.y, 150, 150);
  }
  
  public void mover() {
    this.posicion.add(this.velocidad);

    if (this.posicion.y > height + 150) {
      this.posicion.x = random(width);
      this.posicion.y = -150;  
    }
  }
}
