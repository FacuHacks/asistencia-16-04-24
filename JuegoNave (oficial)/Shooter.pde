class Shooter {
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;

  public Shooter() {
    imagen = loadImage("shooter.png");
    posicion = new PVector(0, 0);
    velocidad = new PVector(0, 0);
  }

  public void dibujar() {
    imageMode(CENTER);
    image(imagen, posicion.x, posicion.y, 60, 60);
  }

  public void mover(int direccion) {
    // Mover la nave según la dirección
    switch (direccion) {
      case 0: // Izquierda
        posicion.x -= velocidad.x;
        imagen = loadImage("shooterIZ.png");
        break;
      case 1: // Derecha
        posicion.x += velocidad.x;
         imagen = loadImage("shooterDE.png");
        break;
      case 2: // Arriba
        posicion.y -= velocidad.y;
         imagen = loadImage("shooter.png");
        break;
      case 3: // Abajo
        posicion.y += velocidad.y;
         imagen = loadImage("shooterAB.png");
        break;
      default:
        break;
    }
  }

  public PVector getPosicion() {
    return this.posicion;
  }

  public void setPosicion(PVector posicion) {
    this.posicion = posicion;
  }

  public PVector getVelocidad() {
    return this.velocidad;
  }

  public void setVelocidad(PVector velocidad) {
    this.velocidad = velocidad;
  }
}
