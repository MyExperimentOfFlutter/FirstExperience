//wap to find simple interest
//si = (p * r * n)/100

import 'dart:io';

void main() {
  print('calculation of simple interest');
  print('enter p:');
  var p = int.parse(stdin.readLineSync()!);

  print('enter r:');
  var r = int.parse(stdin.readLineSync()!);

  print('enter n:');
  var n = int.parse(stdin.readLineSync()!);

  var si = (p * r * n) / 100;
  print('simple interest = $si');
}
