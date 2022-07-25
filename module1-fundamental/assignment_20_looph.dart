//find out max from given number

import 'dart:io';

void main() {
  print('enter number');
  var num = int.parse(stdin.readLineSync()!);

  while (num != 0) {
    num = (num / 10).toInt();
    
    print(num);
  }
}
