//calculate sum and find percentage

import 'dart:io';

void main() {
  print('enter marks for subject - 1');
  var subject1 = int.parse(stdin.readLineSync()!);

  print('enter marks for subject - 2');
  var subject2 = int.parse(stdin.readLineSync()!);

  print('enter marks for subject - 3');
  var subject3 = int.parse(stdin.readLineSync()!);

  print('enter marks for subject - 4');
  var subject4 = int.parse(stdin.readLineSync()!);

  print('enter marks for subject - 5');
  var subject5 = int.parse(stdin.readLineSync()!);

  var totalmarks = subject1 + subject2 + subject3 + subject4 + subject5;
  var percentage = (totalmarks / 5).toInt();

  print('Total Marks = ${totalmarks}');
  print('Percentage = ${percentage}');
}
