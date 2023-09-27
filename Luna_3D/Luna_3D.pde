PShape Luna;
PImage txtr;
float theta;

void setup() {
  size (500, 500, P3D);
  txtr = loadImage("Diffuse_2K.png");
  Luna = loadShape("Moon 2K.obj");
  Luna.setTexture(txtr); //attach texture to the 3D shape
}


void draw () {
  background (0);
  //lights();
 
  pushMatrix();
  translate (width/2, height/2);
  rotate(theta);
  rotateY(theta/2);
  scale (80);
  shape (Luna);
  popMatrix();
  

  theta+=.01; //increment angle
}
