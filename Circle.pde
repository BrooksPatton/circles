class Circle {
  float x;
  float y;
  float r;
  float red;
  float green;
  float blue;
  
  boolean growing = true;
  
  Circle(float x_, float y_) {
    x = x_;
    y = y_;
    r = 1;
    red = random(0, 255);
    green = random(0, 255);
    blue = random(0, 255);
  }
  
  void grow() {
    if(growing) {
      r = r + 1;
    }
  }
  
  boolean edges() {
    return x + r > width || x - r < 0 || y + r > height || y - r < 0;
  }
  
  void show() {
    noStroke();
    fill(red, green, blue);
    strokeWeight(2);
    ellipse(x, y, r*2, r*2);
  }
}