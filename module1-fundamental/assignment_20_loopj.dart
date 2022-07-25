import 'dart:io';

//enter nummber and summation of first and last digit
void main() {
  print('Enter Number');
  var num1 = int.parse(stdin.readLineSync()!);
  var num2 = num1;
  var lst;
/*
  while (num1 != 0) {
    num1 = (num1 / 10).toInt();
    print('$num1');
  }
  */
  var lastDigit = (num1 % 10).toInt();
  print('last digit = $lastDigit');

  while (num2 >= 10) {
    num2 = (num2 / 10).toInt();
  }
  var fst = num2;
  print('First Digit = $fst');

  print('sum = ${fst + lastDigit}');
}
