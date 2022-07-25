import 'dart:io';
//use of switch statment
//display from monday to sunday

void main() {
  print('enter digit between 1 to 7');
  var dgt = int.parse(stdin.readLineSync()!);

  switch (dgt) {
    case 1:
      print('Monday');
      break;

    case 2:
      print('Tuesday');
      break;

    case 3:
      print('Wednesday');
      break;

    case 4:
      print('Thursday');
      break;

    case 5:
      print('Friday');
      break;

    case 6:
      print('Saturday');
      break;

    case 7:
      print('Sunday');
      break;

    default:
      print('Invalid Input');
      break;
  }
}
