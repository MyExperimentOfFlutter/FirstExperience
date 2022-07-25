//wap to find area of triangle
// area = (h * b)/2

import 'dart:io';

void main() {
  print('enter h:');
  var h = int.parse(stdin.readLineSync()!);

  print('enter b:');
  var b = int.parse(stdin.readLineSync()!);

  var area = ((h * b) / 2).toDouble().roundToDouble();
  print('area of triangle = $area');
}
