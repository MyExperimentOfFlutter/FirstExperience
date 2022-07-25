//write a program to make square and cube
import 'dart:io';

void main() {
  print('enter number ');
  var num = int.parse(stdin.readLineSync()!);

  print('square = ${num * num}');
  print('cube = ${num * num * num}');
}
