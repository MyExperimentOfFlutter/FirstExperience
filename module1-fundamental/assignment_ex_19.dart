//menu driven using and using if
//Area of triangle
import 'dart:io';

int areaOfTriangle() {
  print('enter height');
  var h = int.parse(stdin.readLineSync()!);

  print('enter base');
  var b = int.parse(stdin.readLineSync()!);
  return ((h * b) / 2).toInt();
}

int areaOfRectangle() {
  print('enter widrth');
  var w = int.parse(stdin.readLineSync()!);

  print('enter length');
  var l = int.parse(stdin.readLineSync()!);
  return (w * l).toInt();
}

int areaOfCircle() {
  print('enter radius');
  var r = int.parse(stdin.readLineSync()!);
  return (3.14 * r * r).toInt();
}

void main() {
  var chInput;
  do {
    print('enter 1 for Triangle');
    print('enter 2 for Rectangle');
    print('enter 3 for Circle');
    print('enter 4 for Exit');
    chInput = int.parse(stdin.readLineSync()!);
    if (chInput == 1) {
      print('you have selected first choice 1');
      print(areaOfTriangle());
    } else if (chInput == 2) {
      print('you have selected second choice 2');
      print(areaOfRectangle());
    } else if (chInput == 3) {
      print('you have selected third choice 3');
      print(areaOfCircle());
    }
  } while (chInput != 4);
}
