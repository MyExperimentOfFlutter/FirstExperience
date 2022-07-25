import 'dart:io';
//wap to check number is positive or negative

void main() {
  print('enter number');
  var num1 = int.parse(stdin.readLineSync()!);

  if (num1 > 0) {
    print('you have entered positive number');
  } else if (num1 == 0) {
    print('you have entered zero');
  } else {
    print('you have entered negative number');
  }
}
