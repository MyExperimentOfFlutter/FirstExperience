import 'dart:io';

void main() {
  var fact = 1;
  print('Enter Number');
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    fact = fact * i;
    // print('${i} * ${n}');
    //print('${fact}');
  }

  print('Factorial = ${fact}');
}
