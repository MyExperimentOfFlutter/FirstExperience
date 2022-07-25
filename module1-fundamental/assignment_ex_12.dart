import 'dart:io';
//wap to check number is prime or not

void main() {
  var flag = 0;
  print('enter number:');
  var num = int.parse(stdin.readLineSync()!);

  var m = num / 2;

  for (int i = 2; i < m.toInt(); i++) {
    if (num % i == 0) {
      flag = 1;
      print('number is not prime');
      break;
    }
  }
  if (flag == 0) {
    print('number is prime');
  }
}
