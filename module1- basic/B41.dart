class triangle {
  int a = 0, b = 0, c = 0;
  int height = 0;
  areaTriangle() {
    return (height * b) / 2;
  }

  perimeterTriangle() {
    return a + b + c;
  }
}

void main() {
  triangle t = new triangle();
  t.a = 10;
  t.b = 20;
  t.c = 30;
  t.height = 100;

  print(t.areaTriangle());
  print(t.perimeterTriangle());
}
