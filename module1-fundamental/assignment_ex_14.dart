import 'dart:io';

//find max from 3 numbers using terneray operator
void main() {
  print('enter first number');
  var num1 = int.parse(stdin.readLineSync()!);

  print('enter second number');
  var num2 = int.parse(stdin.readLineSync()!);

  print('enter third number');
  var num3 = int.parse(stdin.readLineSync()!);

  useOfTernery(num1, num2, num3);
}

void useOfTernery(int a, int b, int c) {
  var max = ((a > b && a > c)
      ? a
      : (b > c)
          ? b
          : c);

  print('Maximum number = $max');
}
