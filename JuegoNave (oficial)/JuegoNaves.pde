private Shooter nave;
private Asteroide rocaEspacial;
private FondoJuego fondo;
private JoyPad joyPad;

public void setup() {
  size(800, 800);
  fondo = new FondoJuego();
  nave = new Shooter();
  nave.setPosicion(new PVector(width/2, height/2));
  nave.setVelocidad(new PVector(10, 10));
  joyPad = new JoyPad(); // Instancia del JoyPad

  rocaEspacial = new Asteroide(new PVector(width/2, 0), new PVector(0, 10));
}

public void draw() {
  background(0);
  fondo.dibujar();
  nave.dibujar();
  rocaEspacial.dibujar();
  rocaEspacial.mover();

  // Manejo de entrada mediante JoyPad
  if (joyPad.isUpPressed()) {
    nave.mover(2); // Arriba
  }
  if (joyPad.isRightPressed()) {
    nave.mover(1); // Derecha
  }
  if (joyPad.isDownPressed()) {
    nave.mover(3); // Abajo
  }
  if (joyPad.isLeftPressed()) {
    nave.mover(0); // Izquierda
  }
}

public void keyPressed() {
  if (key == 'w' || keyCode == UP) {
    joyPad.setUpPressed(true);
  }
  if (key == 'd' || keyCode == RIGHT) {
    joyPad.setRightPressed(true);
  }
  if (key == 's' || keyCode == DOWN) {
    joyPad.setDownPressed(true);
  }
  if (key == 'a' || keyCode == LEFT) {
    joyPad.setLeftPressed(true);
  }
}

public void keyReleased() {
  if (key == 'w' || keyCode == UP) {
    joyPad.setUpPressed(false);
  }
  if (key == 'd' || keyCode == RIGHT) {
    joyPad.setRightPressed(false);
  }
  if (key == 's' || keyCode == DOWN) {
    joyPad.setDownPressed(false);
  }
  if (key == 'a' || keyCode == LEFT) {
    joyPad.setLeftPressed(false);
  }
}

public void actualizarVelocidadNave() {
  // Actualizar la velocidad de la nave según su posición
  if (nave.getPosicion().x > (width / 2)) {
    nave.getVelocidad().x = 30;
  } else {
    nave.getVelocidad().x = 10;
  }
}
