import 'i4.dart';

abstract class Shape {
  rectangleArea(double length, double breadth) {
    return length * breadth;
  }

  circleArea(double radius) {
    return 3.14 * radius * radius;
  }

  squareArea(double side) {
    return side * side;
  }
}

class Area extends Shape {}

void main() {
  Area a = new Area();
  print(' Cirle area = ${a.circleArea(10)}');
  print('Rectangle area = ${a.rectangleArea(100, 99.99)}');
  print('Square area = ${a.squareArea(100.09)}');
}
