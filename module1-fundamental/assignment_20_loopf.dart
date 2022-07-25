//print multiplication table
import 'dart:io';

void main() {
  print('enter number to print multiplicatio number');
  var num = int.parse(stdin.readLineSync()!);

  printMultiplicationTable(num);
  //print('$m');
}

void printMultiplicationTable(int a) {
  print('Multiplication table for digit = $a');
  for (int i = 1; i <= 10; i++) {
    print('$a * $i = ${a * i}');
  }
}
