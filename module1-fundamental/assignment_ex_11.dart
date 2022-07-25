import 'dart:io';
//wap to fiond leap year

void main() {
  print('enter year');
  var year = int.parse(stdin.readLineSync()!);

  if ((year % 400 == 0 || year % 100 != 0) && (year % 4 == 0))
    print('Given year is leap year');
  else
    print("Given year not a leap year");
}
