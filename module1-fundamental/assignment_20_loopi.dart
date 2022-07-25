//summation of all digits of a given number

import 'dart:io';

void main() {
  print('enter number');
  var number = int.parse(stdin.readLineSync()!);
  var sum = 0;
  while (number != 0) {
    sum = sum + (number % 10).toInt();
    number = (number / 10).toInt();
  }

  print('sum = $sum');
}
