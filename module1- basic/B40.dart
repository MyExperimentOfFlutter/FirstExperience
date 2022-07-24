class Rect {
  int breadth, length;

  Rect(this.breadth, this.length);

  int areaR() {
    return breadth * length;
  }

  int perimeterR() {
    return 2 * (length + breadth);
  }
}

class Square extends Rect {
  int length;

  Square(this.length) : super(0, 0) {
    // TODO: implement
  }

  int area() {
    return length * length;
  }

  int perimeter() {
    return 4 * (length);
  }
}

void main() {
  Square s = new Square(10);
  print('Area of square   ${s.area()}');
  print('Perimeter of square ${s.perimeter()}');
  print('-------------------------------------------');
  Rect r = new Rect(100, 100);
  print('Area of rectangle ${r.areaR()}');
  print('Perimeter of rectangle ${r.perimeterR()}');
}
