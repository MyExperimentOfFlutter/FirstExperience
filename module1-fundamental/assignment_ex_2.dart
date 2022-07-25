import 'dart:io';

//program to make addition/substraction/multiplication/division

void main() {
  var a, b;
  print('enter first number');
  a = int.parse(stdin.readLineSync()!);

  print('enter second number');
  b = int.parse(stdin.readLineSync()!);

  print('summation - a + b = ${a + b} ');
  print('substraction - a - b = ${a - b}');
  print('multiplication - a * b = ${a * b}');
  print('division - a / b = ${(a / b).toInt()}');
}
