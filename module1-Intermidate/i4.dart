class Shape {
  printShape() {
    print('This is shape');
  }
}

class Rectangle extends Shape {
  printRectangleShape() {
    print('This is rectangle shape');
  }
}

class Circle extends Shape {
  printCircleShape() {
    print('This is circle shape');
  }
}

class Square extends Rectangle {
  printSquareRectangle() {
    print('Square is rectangle');
  }
}

void main() {
  var s = Square();
  s.printRectangleShape();

  var r = Rectangle();
  r.printRectangleShape();
  r.printShape();
}
