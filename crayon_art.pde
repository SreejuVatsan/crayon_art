//http://p5art.tumblr.com/post/118351216698/tripaint-code-here-original-image-here
CrayonTip crayon;
PImage img, img_small;
int scale_fact = 12, img_small_w, img_small_h;

void setup() {

  // img = loadImage("megamind.jpg");
  img = loadImage("girl_potrait.jpg");
  // img = loadImage("snowman.jpg");
  img_small_w = img.width/scale_fact;
  img_small_h = img.height/scale_fact;
  img_small = createImage(img_small_w, img_small_h, RGB);
  img_small.copy(img, 0, 0, img.width, img.height, 0, 0, img_small_w, img_small_h);
  // size(800, 800);
  size(980, 1429);
  // size(1080, 1080);
  // size(img.width, img.height);
  surface.setResizable(true);
  surface.setSize(img.width, img.height);

  crayon = new CrayonTip(scale_fact);
  // img.filter(POSTERIZE, 10);
  background(20);
  noStroke();
  // crayonStyle();
}

void draw() {
  crayonStyle();
  noLoop();
  // println(1);
}

void crayonStyle() {
  img_small.loadPixels();
  for (int x = 0; x < img_small_w; x++) {
    for (int y = 0; y < img_small_h; y++) {
      int index = x + y * img_small_w;
      // println("x: "+ x +" - y: "+ y +". index: "+index);
      // blendMode(DIFFERENCE);
      // blendMode(EXCLUSION);
      // blendMode(SCREEN);
      // blendMode(REPLACE);
      color c = img_small.pixels[index];
      shape(crayon.getCrayonTip(c), x*scale_fact, y*scale_fact);
      // colorMode(ARGB, 255);
      // fill(255, 255, 255, 180);
      // circle(x*scale_fact, y*scale_fact, scale_fact/2.2);
      }
    }
    // img.updatePixels();
}

// void keyPressed() {
//   save(random(1234)+".jpg");
// }