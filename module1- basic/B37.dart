class Area {
  double areaOfSquare(double side) {
    return side * side;
  }

  double areaOfRectangle(double length, double breadth) {
    return length * breadth;
  }
}

void main() {
  var a = Area();
  print('Area of square = ${a.areaOfSquare(100)}');
  print('Area of rectangle = ${a.areaOfRectangle(100, 100)}');
}
