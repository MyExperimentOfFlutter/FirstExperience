import 'dart:io';
//factorial of given number

void main() {
  var fact = 1;
  var x;
  print('enter number');
  var number = int.parse(stdin.readLineSync()!);

  /*if (number == 1) {
    fact = 1;
  } else {
    fact = fact * (number - 1);
  }
  */
  for (x = 1; x <= number; x++) {
    fact = (fact * x).toInt();
  }
  print(fact);
}
