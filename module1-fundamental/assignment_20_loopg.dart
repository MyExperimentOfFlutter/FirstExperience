import 'dart:io';
//reverse of a number

void main() {
  print('enter number');
  var num = int.parse(stdin.readLineSync()!);
  int reverse = 0;
  int max = 0;
  int reminder;
  while (num != 0) {
    reminder = num % 10;
    reverse = (reverse * 10) + reminder;
    num = (num / 10).toInt();
  }
  print(reverse);
}
